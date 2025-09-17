<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script src="resources/js/bootstrap-multiselect.min.js"></script>

<style>
.statementDiv {
    width: 83%;
}

.statementCards {
    background-color: #F9F9F9;
    min-height: 100px;
}

.icon {
    width: 30px;
    height: 30px;
}

.iconContainer {
    width: 55px;
    height: 55px;
    background-color: #FFFFFF;
    display: flex;
    justify-content: center;
    align-items: center;
    aspect-ratio: 1 / 1;
    border-radius: 50%;
    border: 2px;
}

.arrowContainer {
    height: 40px;
    width: 40px;
    border-radius: 50%;
}

.leftArrow {
    // font-size: 20px;
    color: #ffffff;
}

.cardsTitle {
    margin-top: 0.4rem;
    transition: transform 0.3s ease;
}

.cardsDesc {
    color: #777777;
    opacity: 0;
    transform: translateY(20px);
    transition: all 0.4s ease;
    margin-top: 0.3rem;
}

/* Hover effect */
.statementCards:hover .cardsTitle {
    transform: translateY(-8px);
}

.statementCards:hover .cardsDesc {
    opacity: 1;
    transform: translateY(0);
    margin-top: 0.6rem;
}



</style>

<div class="container-fluid gx-1 gx-lg-0 mt-3 mt-lg-5 px-4 px-lg-0 mx-5 mx-xl-5 float-end statementDiv border border-danger">
    <div class="bg-black rounded-circle arrowContainer mb-4 d-flex justify-content-center align-items-center">
        <i class="bi bi-chevron-left leftArrow"></i>
    </div>
    <h1 class="border text-black mb-5">MY STATEMENTS</h1>

    <div class="row">

        <!-- View Transaction History-->
        <div class="col-12 col-lg-6 border px-4 py-2">
            <a id="#">
                <div class="row border p-2 rounded-2 statementCards">
                    <!-- Icon -->
                    <div class="col-2 border d-flex justify-content-center align-items-center">
                        <div class="iconContainer border-danger">
                            <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                        </div>
                    </div>

                    <!-- Title and description -->
                    <div class="col-10 border-danger d-flex flex-column align-items-center justify-content-start pt-2">
                        <h5 class="cardsTitle border">View Transaction History</h5>
                        <p class="cardsDesc border">View and filter your transaction history.</p>
                    </div>
                </div>
            </a>
        </div>

        <!-- View e-Statement-->
        <div class="col-12 col-lg-6 border px-4 py-2">
            <a id="#">
                <div class="row border p-2 rounded-2 statementCards">
                    <!-- Icon -->
                    <div class="col-2 border d-flex justify-content-center align-items-center">
                        <div class="iconContainer border-danger">
                            <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                        </div>
                    </div>

                    <!-- Tittle and description -->
                    <div class="col border-danger d-flex align-items-center pt-2">
                        <h5 class="title">View Transaction History</h5>
                        <p class="description">View and filter your transaction history.</p>
                    </div>
                </div>
            </a>
        </div>


        <!-- View e-Statement-->
        <div class="col-12 col-lg-6 border px-4 py-2">
            <a id="#">
                <div class="row border p-2 rounded-2 statementCards">
                    <!-- Icon -->
                    <div class="col-2 border d-flex justify-content-center align-items-center">
                        <div class="iconContainer border-danger">
                            <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                        </div>
                    </div>

                    <!-- Tittle and description -->
                    <div class="col border-danger d-flex align-items-center pt-2">
                        <h5 class="title">View Transaction History</h5>
                        <p class="description">View and filter your transaction history.</p>
                    </div>
                </div>
            </a>
        </div>




    </div>
</div>



<script>

</script>

