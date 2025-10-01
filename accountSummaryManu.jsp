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

/* Section */

.sectionDiv {
    margin-bottom: 20px;
}

.sectionHeaderContainer {
    display: flex;
    align-items: end;
    margin-bottom: 20px;
    padding: 0 0;
}

.sectionHeader {
    font-size: 24px;
    margin-right: 3px;
    font-weight: bold;
}

/* Section - Cards */

.cardDiv {
    overflow-x: auto;
    overflow-y: hidden;
    display: flex;
    flex-wrap: nowrap;
    align-items: center
    justify-content: start;
    gap: 16px;
    padding: 0 0;
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

/* Section - Cards - Apply Card */

.applyCard {
    width: 270px;
    height: 153px;
    margin-right: 0px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    column-gap: 0;
    border: 2px dashed #CECECE;
}


.applyIconContainer {
    display: flex;
    justify-content: end;
}

.applyIcon {
    width: 70px;
    height: 70px;
}

/* Section - Apply Div */

.applyDiv {
    border: 2px dotted orange;
    min-height: 142px;
    align-items: center;
    background-color: #F9F9F9;
    border: 2px solid #E3E3E3;
}

.applyDivTitle {
    font-size: 24px;
}

.applyDivDescription {
    font-size: 17px;
}

.applyIconBig {
    width: 90px;
}

@media (max-width: 650px){
    .applyDivTitle {
        font-size: 22px;
    }

    .applyDivDescription {
        font-size: 14x;
    }

    .applyIconBig {
        width: 80px;
    }
}

</style>

<div class="container-fluid gx-1 gx-lg-0 mt-3 mt-lg-5 px-4 px-lg-0 mx-5 mx-xl-5 float-end mainDiv ">

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
    <h1 class="text-black mb-5">My Accounts</h1>

    <div class="px-2">
        <!-- Section 1: My Current / Savings -->
        <div class="row sectionDiv">

            <!-- Section - Header -->
            <div class="sectionHeaderContainer">
                <p class="sectionHeader">My Current / Savings</p>
                <p class="pb-1">(8)</p>
            </div>

            <!-- Section - Cards -->
            <div class="cardDiv">

                <!-- Card 1 -->
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/accSummary/dollar.png" alt="Dollar">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-3">
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

                <!-- Card 2 -->
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/accSummary/dollar.png" alt="Dollar">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-3">
                                <label class="fw-bold">Son Education</label>
                                <label>Plus Savings Account</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">7780090938</label>
                        </div>
                    </div>
                </a>

                <!-- Card 3 -->
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/accSummary/dollar.png" alt="Dollar">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-3">
                                <label class="fw-bold">Travelling</label>
                                <label>Plus Savings Account</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">8477902234</label>
                        </div>
                    </div>
                </a>

                <!-- Card 4 -->
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/accSummary/dollar.png" alt="Dollar">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-3">
                                <label class="fw-bold">Golf Trips</label>
                                <label>Plus Savings Account</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">8840884930</label>
                        </div>
                    </div>
                </a>

                <!-- Card 5 -->
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/accSummary/dollar.png" alt="Dollar">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-3">
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

        <!-- Section 2: My Cards -->
        <div class="row sectionDiv">

            <!-- Section - Header -->
            <div class="sectionHeaderContainer">
                <p class="sectionHeader">My Cards</p>
                <p class="pb-1">(8)</p>
            </div>

            <!-- Section - Cards -->
            <div class="cardDiv">

                <!-- Card 1 -->
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/accSummary/card2.png" alt="Card">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-3">
                                <label class="fw-bold">Main Card</label>
                                <label>Visa Platinum</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Card Number</label>
                            <label class="m-0">8800 8474 7766 0000</label>
                        </div>
                    </div>
                </a>

                <!-- Card 2 -->
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/accSummary/card2.png" alt="Card">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-3">
                                <label class="fw-bold">Join Card</label>
                                <label>Platinum Mastercard</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">7780090938</label>
                        </div>
                    </div>
                </a>

                <!-- Apply Card -->
                <a id='#'>
                    <div class="applyCard py-2 px-3 rounded-4">
                        <div class="row">

                            <!-- Tittle and description -->
                            <div class="col">
                                <label class="fw-bold">Apply New Card</label>
                                <label>Your Next Card Awaits</label>
                            </div>

                            <!-- Plus icon -->
                            <div class="col-1 d-flex justify-content-end">
                                <div class="fs-5">
                                    <span><i class="bi bi-plus-circle-fill text-primary"></i></span>
                                </div>
                            </div>
                        </div>

                        <!-- Apply Icon Image -->
                        <div class="applyIconContainer">
                            <img class="applyIcon" src="resources/images/newIcon/accSummary/applyCard.png" alt="Apply Card">
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <!-- Section 3: My Fixed Deposits -->
        <div class="row sectionDiv">

            <!-- Section - Header -->
            <div class="sectionHeaderContainer">
                <p class="sectionHeader">My Fixed Deposits</p>
                <p class="pb-1">(3)</p>
            </div>

            <!-- Section - Cards -->
            <div class="cardDiv">

                <!-- Card 1 -->
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/accSummary/eFD2.png" alt="e Fixed Deposits">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-3">
                                <label class="fw-bold">Wedding Deposits</label>
                                <label>PB eFixed Deposit</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">8849204711</label>
                        </div>
                    </div>
                </a>

                <!-- Card 2 -->
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/accSummary/eFD2.png" alt="e Fixed Deposits">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-3">
                                <label class="fw-bold">SGD Savings</label>
                                <label>PB Foreign Currency</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">7780090938</label>
                        </div>
                    </div>
                </a>

                <!-- Card 3 -->
                <a id="#">
                    <div class="cards py-2 px-3 rounded-4">
                        <div class="row gx-0 w-100">

                            <!-- Icon -->
                            <div class="col-3 iconContainer">
                                <div class="iconBackground">
                                    <img class="icon" src="resources/images/newIcon/accSummary/eFD2.png" alt="e Fixed Deposits">
                                </div>
                            </div>

                            <!-- Cards Content -->
                            <div class="col-9 cardsContent ps-3">
                                <label class="fw-bold">Education Deposits</label>
                                <label>PB eFixed Deposit</label>
                            </div>
                        </div>

                        <!-- Cards Content Bottom - Account / Card Number -->
                        <div class="cardsContentBottom">
                            <label class="fw-bold m-0">Account Number</label>
                            <label class="m-0">4455345653</label>
                        </div>
                    </div>
                </a>

                <!-- Apply Card -->
                <a id='#'>
                    <div class="applyCard py-2 px-3 rounded-4">
                        <div class="row">

                            <!-- Title and description -->
                            <div class="col">
                                <label class="fw-bold">Apply New Card</label>
                                <label>Your Next Card Awaits</label>
                            </div>

                            <!-- Plus icon -->
                            <div class="col-1 d-flex justify-content-end">
                                <div class="fs-5">
                                    <span><i class="bi bi-plus-circle-fill text-primary"></i></span>
                                </div>
                            </div>
                        </div>

                        <!-- Apply Icon Image -->
                        <div class="applyIconContainer">
                            <img class="applyIcon" src="resources/images/newIcon/accSummary/applyFD.png" alt="Apply Fixed Deposits">
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <!-- Section 4: My Loan Financing -->
        <div class="row sectionDiv">

            <!-- Section - Header -->
            <div class="sectionHeaderContainer">
                <p class="sectionHeader">My Loan Financing</p>
                <p class="pb-1">(0)</p>
            </div>

            <!-- Section - Apply Div -->

            <div class="row applyDiv rounded-4 py-xl-0 py-3">

                <!-- Apply Icon Image -->
                <div class="col-xl-2 col-3 d-flex justify-content-md-end justify-content-center pe-2">
                    <img class="applyIconBig" src="resources/images/newIcon/accSummary/applyLoan.png" alt="Apply Loan">
                </div>

                <!-- Title and Description -->
                <div class="col-xl-7 col-9">
                    <h3 class="applyDivTitle">Start Your Loan Journey</h3>
                    <h5 class="applyDivDescription">Accessible & flexible loans tailored to your needs.</h5>
                </div>
                <div class="col-xl-3 col-12 d-flex justify-content-end justify-content-xl-center mt-md-0 mt-2">
                    <button type="button" class="btn btn-primary">Apply Now</button>
                </div>
            </div>
        </div>

        <!-- Section 5: My Investments -->
        <div class="row sectionDiv">

            <!-- Section - Header -->
            <div class="sectionHeaderContainer">
                <p class="sectionHeader">My Investments</p>
                <p class="pb-1">(0)</p>
            </div>

            <!-- Section - Apply Div -->

            <div class="row applyDiv rounded-4 py-xl-0 py-3">

                <!-- Apply Icon Image -->
                <div class="col-xl-2 col-3 d-flex justify-content-md-end justify-content-center pe-2">
                    <img class="applyIconBig" src="resources/images/newIcon/accSummary/applyInvestment.png" alt="Apply Investment">
                </div>

                <!-- Title and Description -->
                <div class="col-xl-7 col-9">
                    <h4 class="applyDivTitle">Grow Your Wealth</h4>
                    <h6 class="applyDivDescription">Find the right investment to grow your wealth.</h6>
                </div>
                <div class="col-xl-3 col-12 d-flex justify-content-end justify-content-xl-center mt-md-0 mt-2">
                    <button type="button" class="btn btn-primary">Apply Now</button>
                </div>
            </div>
        </div>

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
