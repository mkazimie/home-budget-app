<%--
  Created by IntelliJ IDEA.
  User: magdalena
  Date: 07.10.2020
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <%@include file="fragment/header.jsp" %>
    <title>Transfer Money</title>
</head>
<body>
<!-- Page Heading -->
<div id="wrapper">

    <%@include file="fragment/sidebar.jsp" %>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <%@include file="fragment/topbar.jsp" %>


            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-baseline justify-content-between mb-4">
                    <a href="/auth/budgets/${budget.id}"
                       class="btn btn-primary"><i class="fas fa-angle-double-left"></i></a>
                    <h1 class="col-10 h3 mb-0 text-primary font-weight-bolder">${budget.name} Categories </h1>
                </div>

                <%--                <!-- Content Row -->--%>
                <%--                <div class="row">--%>


                <%--                    <!-- BUDGET -->--%>

                <%--                    <div class="col-xl-3 col-md-6 mb-4 ">--%>
                <%--                        <div class="card h-100 shadow py-2 bg-gradient-info ">--%>
                <%--                            <div class="card-body">--%>
                <%--                                <div class="row no-gutters align-items-center">--%>
                <%--                                    <div class="col mr-2">--%>
                <%--                                        <div class="text-md font-weight-bold text-primary text-uppercase mb-1">--%>
                <%--                                            Budget--%>
                <%--                                        </div>--%>
                <%--                                        <div class="h5 mb-0 font-weight-bold text-white">${budget.budgetMoney} €--%>
                <%--                                            &lt;%&ndash;                                        <div class="h5 mb-0 font-weight-bold text-white">${allCategoryBudgets} €&ndash;%&gt;--%>

                <%--                                        </div>--%>
                <%--                                    </div>--%>
                <%--                                    <div class="col-auto">--%>
                <%--                                        <i class="fas fa-coins fa-2x text-gray-300"></i>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>


                <%--                    <!-- AVAILABLE -->--%>
                <%--                    <div class="col-xl-3 col-md-6 mb-4 ">--%>
                <%--                        &lt;%&ndash;                    <div class="card border-left-primary h-100 shadow py-2">&ndash;%&gt;--%>
                <%--                        <div class="card h-100 shadow py-2 bg-gradient-success ">--%>
                <%--                            <div class="card-body">--%>
                <%--                                <div class="row no-gutters align-items-center">--%>
                <%--                                    <div class="col mr-2">--%>
                <%--                                        <div class="text-md font-weight-bold text-primary text-uppercase mb-1">--%>
                <%--                                            Available--%>
                <%--                                        </div>--%>
                <%--                                        <div class="h5 mb-0 font-weight-bold text-white">${budget.moneyLeft} €</div>--%>
                <%--                                        &lt;%&ndash;                                        <div class="h5 mb-0 font-weight-bold text-white">${allCategoriesBalance} €</div>&ndash;%&gt;--%>

                <%--                                    </div>--%>
                <%--                                    <div class="col-auto">--%>
                <%--                                        <i class="fas fa-hand-holding-usd fa-2x text-gray-300"></i>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>

                <%--                    <!-- SPENDINGS -->--%>
                <%--                    <div class="col-xl-3 col-md-6 mb-4 ">--%>
                <%--                        &lt;%&ndash;                    <div class="card border-left-primary h-100 shadow py-2">&ndash;%&gt;--%>
                <%--                        <div class="card h-100 shadow py-2 bg-gradient-warning ">--%>
                <%--                            <div class="card-body">--%>
                <%--                                <div class="row no-gutters align-items-center">--%>
                <%--                                    <div class="col mr-2">--%>
                <%--                                        <div class="text-md font-weight-bold text-primary text-uppercase mb-1">--%>
                <%--                                            Expenses--%>
                <%--                                        </div>--%>
                <%--                                        <div class="h5 mb-0 font-weight-bold--%>
                <%--                                        text-white"> ${allExpenses} €--%>
                <%--                                        </div>--%>
                <%--                                    </div>--%>
                <%--                                    <div class="col-auto">--%>
                <%--                                        <i class="fas fa-file-invoice-dollar fa-2x text-gray-300"></i>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>

                <%--                </div>--%>

                <!-- Content Row -->
                <div class="row">

                    <!-- Form for adding NEW CATEGORY -->
                    <div class="col-xl-4 col-md-6 mb-4 ">
                        <div class="card border-left-primary shadow">
                            <div class="card-header bg-primary d-table">
                                <div class="d-table-cell align-middle">
                                    <h5 class="card-title font-weight-bold text-center text-white">Add
                                        Category</h5>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row no-gutters align-items-center justify-content-center">
                                    <div class="errorMsg alert alert-danger d-none" role="alert">${error}</div>
                                    <form:form method="post" action="/auth/budgets/${budget.id}/categories"
                                               modelAttribute="categoryDto">

                                    <!-- Category Name SELECT Input - can be toggled -->

                                    <div id="selectInput" class="form-group">
                                        <form:label path="selectedName" cssClass="text-primary"> Name </form:label>
                                        <form:select path="selectedName" class="form-control" id="selectCat">
                                            <form:option label="--Select--"
                                                         selected="selected" value=" "/>
                                            <form:options items="${catName.keySet()}"/>
                                            <form:option value="customized"
                                                         label="Add your own"/>
                                        </form:select>
                                        <form:errors path="selectedName" cssClass="errorMessage"/>
                                    </div>

                                    <!-- Category OWN Input - can be toggled -->

                                    <div id="ownInput" class="form-group d-none">
                                        <form:label path="ownName" cssClass="text-primary"> Name </form:label>
                                        <div class="input-group">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <input type="checkbox" id="getCatList">&nbsp List
                                                </div>
                                            </div>
                                            <form:input path="ownName" type="text"
                                                        class="form-control form-control-user"
                                                        placeholder="ex. Food, Leisure..."
                                            />
                                            <form:errors path="ownName" cssClass="errorMessage"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <form:label path="categoryMoney"
                                                    cssClass="text-primary"> Budget </form:label>
                                        <div class="input-group">
                                            <form:input path="categoryMoney" type="number" min="1" step=".1"
                                                        class="form-control form-control-user"
                                                        placeholder="" required="required"/>
                                            <div class="input-group-append">
                                                <span class="input-group-text">€</span>
                                            </div>
                                        </div>
                                        <form:errors path="categoryMoney" cssClass="errorMessage"/>
                                    </div>

                                </div>
                            </div>
                            <div class="card-footer">
                                <button class="btn btn-success btn-user btn-block" type="submit"> Save
                                </button>
                                </form:form>
                            </div>
                        </div>
                    </div>

                    <!-- Table displaying ALL CATEGORIES for this budget -->

                    <div class="col-xl-7 col-md-6 mb-4 ">
                        <div class="card border-left-primary shadow h-100">
                            <div class="card-header bg-primary d-table">
                                <div class="d-table-cell align-middle">
                                    <h5 class="card-title font-weight-bold text-center text-white">
                                        Categories</h5>
                                </div>
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                        <tr>
                                            <th></th>
                                            <th>Name</th>
                                            <th><strong>Budget</strong></th>
                                            <th><strong>Available</strong></th>
                                            <th></th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach items="${budget.categories}" var="category">
                                            <tr>
                                                <td class="align-middle"><a
                                                        href="/auth/budgets/${budget.id}/categories/${category.id}"
                                                        class="btn btn-success"><i
                                                        class="fas fa-angle-double-right"></i></a>
                                                </td>
                                                <td
                                                        class="align-middle">
                                                    <c:choose>
                                                        <c:when test="${empty catName.get(category.name)}">
                                                            <i class="fas fa-ellipsis-h"></i> </c:when>
                                                        <c:otherwise>
                                                            ${catName.get(category.name)}
                                                        </c:otherwise>
                                                    </c:choose>
                                                    &nbsp;&nbsp; ${category.name}
                                                </td>
                                                <td class="align-middle">${category.categoryBudget} €</td>

                                                <c:choose>
                                                    <c:when test="${categoryBalanceMap.get(category.name) > 0}">
                                                        <td class="align-middle
                                                     text-success">${categoryBalanceMap.get(category.name)} €
                                                        </td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="align-middle
                                                     text-danger">${categoryBalanceMap.get(category.name)} €
                                                        </td>
                                                    </c:otherwise>
                                                </c:choose>
                                                <td>
                                                    <button id="deleteBtn" data-toggle="modal"
                                                            data-target="#deleteFromAllModal"
                                                            data-name="${category.name}"
                                                            data-id="${category.id}"
                                                            data-budget="${budget.id}"
                                                            class="btn-circle btn-secondary btn-sm"><i
                                                            class="far fa-trash-alt"></i></button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>


                                </div>
                            </div>


                            <!--MODAL to CONFIRM and EXECUTE DELETE operation -->
                            <div id="deleteFromAllModal" class="modal" tabindex="-1" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header bg-primary d-table justify-content-between">
                                            <div class="d-table-cell align-middle">
                                                <h5 class="modal-title text-white font-weight-bolder text-center">
                                                    Delete category</h5>
                                            </div>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="addAlert"></div>
                                            <p class="text-center text-primary">Are you sure you want to delete
                                                category<strong></strong>?</p>
                                            <div class="btn-wrapper text-center">
                                                <a href="" class="btn btn-primary"> Yes
                                                </a>
                                                <button type="button" class="btn btn-secondary"
                                                        data-dismiss="modal"> No
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>


                </div>

                <!-- Content Row -->

                <div class="row">

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            <%@include file="fragment/footer.jsp" %>
        </div>

        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <div>
        <%@include file="fragment/core-js-plugins.jsp" %>
    </div>


    <!-- Page level plugins -->
    <script src="/resources/static/vendor/chart.js/Chart.min.js"></script>
    <script src="/resources/static/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/resources/static/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="/resources/static/js/customizedJquery.js"></script>

    <!-- Page level custom scripts -->
    <script src="/resources/static/js/demo/chart-area-demo.js"></script>
    <script src="/resources/static/js/demo/datatables-demo.js"></script>
    <script src="/resources/static/js/demo/chart-pie-demo.js"></script>
</body>
</html>
