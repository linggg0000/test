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

/* Section */

.sectionHeader {
    font-size: 24px;
    margin:
}

/* Section - Cards */

.cardDiv {
    overflow-x: auto;
    overflow-y: hidden;
    display: flex;
    flex-wrap: nowrap;
    align-items: center
}

.cardDiv::-webkit-scrollbar {
    display: none;
}

.cards {
    background-color: #EEEEEE;
    width: 270px;
    height: 153px;
    margin-right: 0px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    column-gap: 0;
}

/* Section - Cards - Icon */

.iconContainer {
    display: flex;
    justify-content: center;
    align-items: center;
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

/* Section - Cards - Cards Content */

.cardsContent {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.cards label {
    cursor: pointer;
}

.cardsContentBottom {
    display: flex;
    flex-direction: column;
    width: 100%;
    align-items: start;
    column-gap: 0;
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

    <!-- Back button -->
    <div class="bg-black rounded-circle arrowContainer mb-4 d-flex justify-content-center align-items-center">
        <i class="bi bi-chevron-left leftArrow"></i>
    </div>

    <!-- Page title -->
    <h1 class="text-black mb-4 border border-primary-subtle">My Accounts</h1>


    <!-- Section 1: My Current / Savings -->
    <div class="row sectionDiv border border-danger">

        <!-- Section - Header -->
        <div class="row sectionHeaderDiv d-flex px-0 border border-primary">
            <div class="col-12 col-sm-9">
                <p class="fw-bold sectionHeader m-0 ms-2 border border-primary">My Current / Saving (8)</p>
            </div>
            <div class="col-12 col-sm-3 d-flex align-items-end justify-content-end px-0">
                <a id="#" class="text-primary">
                    <u class="">More Details</u>
                </a>
            </div>
        </div>

        <!-- Section - Cards -->
        <div class="row cardDiv ps-2 gx-3 border border-primary">

            <!-- Card 1 -->
            <div class="col">
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-2">
                                <label class="fw-bold">Primary Account</label>
                                <label>Plus Savings Account</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">6800934822</label>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Card 2 -->
            <div class="col">
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-2">
                                <label class="fw-bold">Primary Account</label>
                                <label>Plus Savings Account</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">6800934822</label>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Card 3 -->
            <div class="col">
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-2">
                                <label class="fw-bold">Primary Account</label>
                                <label>Plus Savings Account</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">6800934822</label>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Card 4 -->
            <div class="col">
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-2">
                                <label class="fw-bold">Primary Account</label>
                                <label>Plus Savings Account</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">6800934822</label>
                        </div>
                    </div>
                </a>
            </div>

            <!-- Card 5 -->
            <div class="col">
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-2">
                                <label class="fw-bold">Primary Account</label>
                                <label>Plus Savings Account</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">6800934822</label>
                        </div>
                    </div>
                </a>
            </div>

        </div>

    </div>

    <!-- Section 2: My Cards -->
    <div class="">

    </div>

    <!-- Section 3: My Fixed Deposits -->
    <div class="">

    </div>

    <!-- Section 4: My Loan Financing -->
    <div class="">

    </div>

    <!-- Section 5: My Investments -->
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
