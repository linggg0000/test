<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script src="resources/js/bootstrap-multiselect.min.js"></script>

<style>

@media (max-width: 992px) {
    .mainDiv {
        width: calc(100% - 100px) !important;
        margin-left: 100px !important;
    }
}

@media (min-width: 992px) {
    .mainDiv {
        width: calc(100% - 320px) !important;
        margin-left: 320px !important;
    }
}

.profilePic {
    width: 4vh;
    height: 4vh;
    border-radius: 50%;
    background-color: #000000;
    color: white;
    font-weight: bold;
    font-size: 2vh;
}

.arrowContainer {
    height: 40px;
    width: 40px;
    border-radius: 50%;
}

.leftArrow {
    color: #ffffff;
    /* font-size: 20px; */
}

.sectionDic {
    border: 1px solid blue;
}

/* Cards */

.cardDiv {
    height: 100px;
    overflow-y: hidden;
}

.cardDiv::-webkit-scrollbar {
    display: none;
}

.cards {
    background-color: #EEEEEE;
    justify-content: center;
    height: 82px;
    width: 270px;
}

/* Cards - Icon */

.iconContainer {
    display: flex;
    justify-content: center;
    align-items: center;
    border: 1px dotted green;
}

.iconBackground {
    width: 57px;
    height: 57px;
    background-color: #FFFFFF;
    display: flex;
    justify-content: center;
    align-items: center;
    aspect-ratio: 1 / 1;
    border-radius: 50%;
    border: 2px;
}

.icon {
    width: 32px;
    height: 32px;
}

</style>

<div class="container-fluid gx-1 gx-lg-0 mt-3 mt-lg-5 px-4 px-lg-0 mx-5 mx-xl-5 float-end mainDiv border">

    <!-- Profile -->
    <div class="row w-100 mx-0 px-0 py-3">
        <div class="col-12 d-flex flex-row justify-content-end align-items-center">
            <div class="profilePic d-flex justify-content-center align-items-center"></div>
            <h6 class="username ms-3 mt-2">${displayName}</h6>
            <span class="text-muted fs-5 ms-3 d-inline">
                <i class="bi bi-chevron-right"></i>
            </span>
        </div>
    </div>

    <!-- Back button & Title -->
    <div class="bg-black rounded-circle arrowContainer mb-4 d-flex justify-content-center align-items-center">
        <i class="bi bi-chevron-left leftArrow"></i>
    </div>
    <h1 class="text-black mb-4">My Accounts</h1>


    <!-- My Current / Savings -->
    <div class="row sectionDiv border border-danger">

        <div class="sectionHeader d-flex border border-info p-3 justify-content-between">
            <p class="fw-bold border border-primary m-0 p-0">My Current / Saving (8)</p>
            <a id="#" class="text-primary border border-danger">
                <u>More Details</u>
            </a>
        </div>

        <div class="row cardDiv border border-primary ps-4 bg-primary-subtle overflow-x-auto flex-nowrap align-items-center">

            <div class="col-3 me-2">
                <a id="#">
                    <div class="row border p-2 rounded-4 cards gx-0 me-1">
                        <!-- Icon -->
                        <div class="col-3 iconContainer">
                            <div class="iconBackground">
                                <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                            </div>
                        </div>

                        <!-- Tittle and description -->
                        <div class="col border d-flex flex-column justify-content-center">
                            <label class="fw-bold">Primary Account</label>
                            <label>Plus Savings Account</label>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-3 me-2">
                <a id="#">
                    <div class="row border p-2 rounded-4 cards gx-0 me-1">
                        <!-- Icon -->
                        <div class="col-3 iconContainer">
                            <div class="iconBackground">
                                <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                            </div>
                        </div>

                        <!-- Tittle and description -->
                        <div class="col border d-flex flex-column justify-content-center">
                            <label class="fw-bold">Primary Account</label>
                            <label>Plus Savings Account</label>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-3">
                <a id="#">
                    <div class="row border p-2 rounded-4 cards gx-0 me-1">
                        <!-- Icon -->
                        <div class="col-3 iconContainer">
                            <div class="iconBackground">
                                <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                            </div>
                        </div>

                        <!-- Tittle and description -->
                        <div class="col border d-flex flex-column justify-content-center">
                            <label class="fw-bold">Primary Account</label>
                            <label>Plus Savings Account</label>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-3">
                <a id="#">
                    <div class="row border p-2 rounded-4 cards gx-0 me-1">
                        <!-- Icon -->
                        <div class="col-3 iconContainer">
                            <div class="iconBackground">
                                <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                            </div>
                        </div>

                        <!-- Tittle and description -->
                        <div class="col border d-flex flex-column justify-content-center">
                            <label class="fw-bold">Primary Account</label>
                            <label>Plus Savings Account</label>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-3">
                <a id="#">
                    <div class="row border p-2 rounded-4 cards gx-0 me-1">
                        <!-- Icon -->
                        <div class="col-3 iconContainer">
                            <div class="iconBackground">
                                <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                            </div>
                        </div>

                        <!-- Tittle and description -->
                        <div class="col border d-flex flex-column justify-content-center">
                            <label class="fw-bold">Primary Account</label>
                            <label>Plus Savings Account</label>
                        </div>
                    </div>
                </a>
            </div>

        </div>

    </div>

    <!-- My Cards -->
    <div class="">

    </div>

    <!-- My Fixed Deposits -->
    <div class="">

    </div>

    <!-- My Loan Financing -->
    <div class="">

    </div>

    <!-- My Investments -->
    <div class="">

    </div>




</div>



<script>
	(function() {
		const scriptsToLoad = [];
		scriptsToLoad.push('resources/js/mainMenu/menuProfileCore.js?${jsDateTime}');

		Promise.all(scriptsToLoad.map(loadScript))
		  .then((results) => { // Do something after all scripts are loaded
		    console.log('All scripts loaded successfully:', results);

		    languages = ${languages};
		    displayName = "${displayName}";

			$(document).ready(function () {
			    initMenuProfile(displayName);
		    });

            hideLoader();
		  })
		  .catch((error) => { // Handle error if any script fails to load
		    console.error('Script loading error:', error);
		  });
	})();
</script>
