package com.example.budgetary.controller;

import com.example.budgetary.entity.Budget;
import com.example.budgetary.entity.Category;
import com.example.budgetary.entity.Transaction;
import com.example.budgetary.entity.dto.TransactionDto;
import com.example.budgetary.security.CurrentUser;
import com.example.budgetary.service.BudgetService;
import com.example.budgetary.service.CategoryService;
import com.example.budgetary.service.TransactionService;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;
import java.util.SortedSet;

@Controller
@RequestMapping("/auth/budgets/{budgetId}")
public class TransactionController {

    private final TransactionService transactionService;
    private final CategoryService categoryService;
    private final BudgetService budgetService;

    public TransactionController(TransactionService transactionService, CategoryService categoryService, BudgetService budgetService) {
        this.transactionService = transactionService;
        this.categoryService = categoryService;
        this.budgetService = budgetService;
    }

    @PostMapping("/categories/{categoryId}/transactions")
    public String addTransaction(@ModelAttribute("transactionDto") @Valid TransactionDto transactionDto,
                                 BindingResult bindingResult, @AuthenticationPrincipal CurrentUser currentUser,
                                 @PathVariable Long categoryId,
                                 Model model, @PathVariable Long budgetId, RedirectAttributes attr) {
        if (!bindingResult.hasErrors()) {
            Category transactionCategory = categoryService.findCategoryById(categoryId);
            SortedSet<Transaction> categoryTransactions = transactionService.makeTransactionOnCategory(transactionDto,
                    transactionCategory, currentUser.getUser());
            model.addAttribute("categoryTransactions", categoryTransactions);
        } else {
            attr.addFlashAttribute("org.springframework.validation.BindingResult.transactionDto", bindingResult);
            attr.addFlashAttribute("transactionDto", transactionDto);
        }
        return "redirect:/auth/budgets/{budgetId}/categories/{categoryId}";
    }

//    @GetMapping("/transfer")
//    public String displayMoneyForm(@PathVariable Long budgetId,
//                                   Model model) {
//        Budget budget = getBudgetById(budgetId);
//        TransactionDto transactionDto = new TransactionDto();
//        model.addAttribute("transactionDto", transactionDto);
//        model.addAttribute("budget", budget);
//        return "transaction-form";
//    }
//
//    @PostMapping("/transfer")
//    public String addIncome(@ModelAttribute("transactionDto") @Valid TransactionDto transactionDto,
//                            BindingResult bindingResult,
//                            @AuthenticationPrincipal CurrentUser currentUser, @PathVariable Long budgetId,
//                            Model model) {
//        if (!bindingResult.hasErrors()) {
//            Budget budget = getBudgetById(budgetId);
//            SortedSet<Transaction> moneyTransfers = transactionService.makeTransactionOnBudget(transactionDto,
//                    currentUser.getUser(), budget);
//            model.addAttribute("moneyTransfers", moneyTransfers);
//        } else {
//            return "transaction-form";
//        }
//        return "redirect:/auth/budgets/{budgetId}/transfer";
//    }

//    private Budget getBudgetById(Long budgetId) {
//        return budgetService.findById(budgetId);
//    }




}
