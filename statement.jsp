// 1. view transaction icon need to change

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
    // font-size: 20px;
    color: #ffffff;
}

.statementCards {
    background-color: #F9F9F9;
    min-height: 90px;
    margin-bottom: 10px;
    overflow: hidden;
    transition: max-height 0.6s ease;
    max-height: 90px;
    // border: 2px dotted blue;
}

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

.cardsContent {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: start;
    padding-top: 22px;
    min-height: 70px;
    max-height: 70px;
    transition: all 0.6s ease;
    // border: 2px solid red;
    overflow: hidden;
}

.cardsTitle {
    // padding-top: 23px;
    transition: transform 0.5s ease;
    font-size: 1.15rem;
    // border: 2px solid blue;
}

.cardsDesc {
    color: #777777;
    opacity: 0;
    transform: translateY(20px);
    transition: all 0.5s ease;
    // margin-top: 5px;
    font-size: 1.0rem;
    // border: 2px solid green;
}

.arrowIcon {
    color: #575757;
}


/* Hover effect */
.statementCards:hover {
    max-height: 300px;
}

.statementCards:hover .cardsContent {
    max-height: 300px;
}

.statementCards:hover .cardsTitle {
    transform: translateY(-12px);
    padding-top: 0;
}

.statementCards:hover .cardsDesc {
    opacity: 1;
    transform: translateY(-8px);
    // margin-top: 20px;
}

/*
.test {
    margin-top: 15px;
    transition: transform 0.5s ease;
    font-size: 1.15rem;
    border: 2px solid blue;
}

.statementCards:hover .test {
    margin-top: 0px;
}
*/

</style>

<div class="container-fluid gx-1 gx-lg-0 mt-3 mt-lg-5 px-4 px-lg-0 mx-5 mx-xl-5 float-end statementDiv border border-danger">

    <!-- Profile -->
    <div class="border row w-100 mx-0 px-0 py-3">
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
    <h1 class="border text-black mb-4">MY STATEMENTS</h1>


    <div class="row">

        <!-- View Transaction History-->
        <div class="col-12 col-lg-6 px-4 py-2">
            <a id="#">
                <div class="row p-2 rounded-3 statementCards">
                    <!-- Icon -->
                    <div class="col-2 iconContainer">
                        <div class="iconBackground">
                            <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                        </div>
                    </div>

                    <!-- Title and description -->
                    <div class="col-9">
                        <div class="cardsContent">
                            <label class="cardsTitle fw-bold">View Transaction History</label>
                            <label class="cardsDesc">View and filter your transaction history.</label>
                        </div>
                    </div>

                    <!-- Arrow icon -->
                    <div class="col-1 text-end pt-1">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" viewBox="0 0 640 640"><!--!Font Awesome Free v7.0.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M603.3 331.3C609.5 325.1 609.5 314.9 603.3 308.7L459.3 164.7C453.1 158.5 442.9 158.5 436.7 164.7C430.5 170.9 430.5 181.1 436.7 187.3L553.4 304L48 304C39.2 304 32 311.2 32 320C32 328.8 39.2 336 48 336L553.4 336L436.7 452.7C430.5 458.9 430.5 469.1 436.7 475.3C442.9 481.5 453.1 481.5 459.3 475.3L603.3 331.3z"/></svg>
                    </div>
                </div>
            </a>
        </div>


        <!-- View e-Statement-->
        <div class="col-12 col-lg-6 px-4 py-2">
            <a id="#">
                <div class="row p-2 rounded-3 statementCards">
                    <!-- Icon -->
                    <div class="col-2 iconContainer">
                        <div class="iconBackground">
                            <img class="icon" src="resources/images/newIcon/statement/viewEStatement.png" alt="Convert Statement">
                        </div>
                    </div>

                    <!-- Title and description -->
                    <div class="col-9">
                        <div class="cardsContent">
                            <label class="cardsTitle fw-bold">View e-Statement</label>
                            <label class="cardsDesc">View, save and print your e-Statement for the past 2 years.</label>
                        </div>
                    </div>

                    <!-- Arrow icon -->
                    <div class="col-1 text-end pt-1">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" viewBox="0 0 640 640"><!--!Font Awesome Free v7.0.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M603.3 331.3C609.5 325.1 609.5 314.9 603.3 308.7L459.3 164.7C453.1 158.5 442.9 158.5 436.7 164.7C430.5 170.9 430.5 181.1 436.7 187.3L553.4 304L48 304C39.2 304 32 311.2 32 320C32 328.8 39.2 336 48 336L553.4 336L436.7 452.7C430.5 458.9 430.5 469.1 436.7 475.3C442.9 481.5 453.1 481.5 459.3 475.3L603.3 331.3z"/></svg>
                    </div>
                </div>
            </a>
        </div>


        <!-- Manage e-Statement-->
        <div class="col-12 col-lg-6 px-4 py-2">
            <a id="#">
                <div class="row p-2 rounded-3 statementCards">
                    <!-- Icon -->
                    <div class="col-2 iconContainer">
                        <div class="iconBackground">
                            <img class="icon" src="resources/images/newIcon/statement/registerEStatement.png" alt="Convert Statement">
                        </div>
                    </div>

                    <!-- Title and description -->
                    <div class="col-9">
                        <div class="cardsContent">
                            <label class="cardsTitle fw-bold">Manage e-Statement</label>
                            <label class="cardsDesc">Register / Deregister e-Statement for your accounts.</label>
                        </div>
                    </div>

                    <!-- Arrow icon -->
                    <div class="col-1 text-end pt-1">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" viewBox="0 0 640 640"><!--!Font Awesome Free v7.0.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M603.3 331.3C609.5 325.1 609.5 314.9 603.3 308.7L459.3 164.7C453.1 158.5 442.9 158.5 436.7 164.7C430.5 170.9 430.5 181.1 436.7 187.3L553.4 304L48 304C39.2 304 32 311.2 32 320C32 328.8 39.2 336 48 336L553.4 336L436.7 452.7C430.5 458.9 430.5 469.1 436.7 475.3C442.9 481.5 453.1 481.5 459.3 475.3L603.3 331.3z"/></svg>
                    </div>
                </div>
            </a>
        </div>


        <!-- Request Paper Statement-->
        <div class="col-12 col-lg-6 px-4 py-2">
            <a id="#">
                <div class="row p-2 rounded-3 statementCards">
                    <!-- Icon -->
                    <div class="col-2 iconContainer">
                        <div class="iconBackground">
                            <img class="icon" src="resources/images/newIcon/statement/requestStatement.png" alt="Convert Statement">
                        </div>
                    </div>

                    <!-- Title and description -->
                    <div class="col-9">
                        <div class="cardsContent">
                            <label class="cardsTitle fw-bold">Request Paper Statement</label>
                            <label class="cardsDesc">Submit your request to receive hard copy statement.</label>
                        </div>
                    </div>

                    <!-- Arrow icon -->
                    <div class="col-1 text-end pt-1">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" viewBox="0 0 640 640"><!--!Font Awesome Free v7.0.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M603.3 331.3C609.5 325.1 609.5 314.9 603.3 308.7L459.3 164.7C453.1 158.5 442.9 158.5 436.7 164.7C430.5 170.9 430.5 181.1 436.7 187.3L553.4 304L48 304C39.2 304 32 311.2 32 320C32 328.8 39.2 336 48 336L553.4 336L436.7 452.7C430.5 458.9 430.5 469.1 436.7 475.3C442.9 481.5 453.1 481.5 459.3 475.3L603.3 331.3z"/></svg>
                    </div>
                </div>
            </a>
        </div>


        <!-- Convert to Statement Savings Account-->
        <div class="col-12 col-lg-6 px-4 py-2">
            <a id="#">
                <div class="row p-2 rounded-3 statementCards">
                    <!-- Icon -->
                    <div class="col-2 iconContainer">
                        <div class="iconBackground">
                            <img class="icon" src="resources/images/newIcon/statement/convertStatement.png" alt="Convert Statement">
                        </div>
                    </div>

                    <!-- Title and description -->
                    <div class="col-9">
                        <div class="cardsContent">
                            <label class="fw-bold cardsTitle">Convert to Statement Savings Account</label>
                            <label class="cardsDesc">Go green by switching your Passbook Savings Account to Statement Savings Account.</label>
                        </div>
                    </div>

                    <!-- Arrow icon -->
                    <div class="col-1 text-end pt-1">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" viewBox="0 0 640 640"><!--!Font Awesome Free v7.0.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M603.3 331.3C609.5 325.1 609.5 314.9 603.3 308.7L459.3 164.7C453.1 158.5 442.9 158.5 436.7 164.7C430.5 170.9 430.5 181.1 436.7 187.3L553.4 304L48 304C39.2 304 32 311.2 32 320C32 328.8 39.2 336 48 336L553.4 336L436.7 452.7C430.5 458.9 430.5 469.1 436.7 475.3C442.9 481.5 453.1 481.5 459.3 475.3L603.3 331.3z"/></svg>
                    </div>
                </div>
            </a>
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
