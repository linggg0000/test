<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

/* Pagination */

.paginationDiv {
    display: flex;
    border: 1px solid red;
}

.tabs {
    display: flex;
    justify-content: center;
    color: #E42126;
    border-bottom: 3px solid #E42126;
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

    <!-- Page header -->
    <p class="text-muted">Transfer & Payment  >  Pay Card  > <span class="fw-bold text-black">Other Card</span></p>
    <h1 class="text-black">Other Card</h1>
    <h5 style="color: #6A6A6A;">Please fill in all necessary details to pay to another card</h5>


    <!-- Pagination -->
    <div class="paginationDiv row">
        <div="tabs col">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-1-circle-fill" viewBox="0 0 16 16">
              <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M9.283 4.002H7.971L6.072 5.385v1.271l1.834-1.318h.065V12h1.312z"/>
            </svg>
            <span>Fill in Details</span>
        </div>
        <div="tabs col">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-2-circle-fill flex-shrink-0" viewBox="0 0 16 16">
              <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M6.646 6.24c0-.691.493-1.306 1.336-1.306.756 0 1.313.492 1.313 1.236 0 .697-.469 1.23-.902 1.705l-2.971 3.293V12h5.344v-1.107H7.268v-.077l1.974-2.22.096-.107c.688-.763 1.287-1.428 1.287-2.43 0-1.266-1.031-2.215-2.613-2.215-1.758 0-2.637 1.19-2.637 2.402v.065h1.271v-.07Z"/>
            </svg>
            <span>Verify Details</span>
        </div>
        <div="tabs col">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-3-circle-fill flex-shrink-0" viewBox="0 0 16 16">
              <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-8.082.414c.92 0 1.535.54 1.541 1.318.012.791-.615 1.36-1.588 1.354-.861-.006-1.482-.469-1.54-1.066H5.104c.047 1.177 1.05 2.144 2.754 2.144 1.653 0 2.954-.937 2.93-2.396-.023-1.278-1.031-1.846-1.734-1.916v-.07c.597-.1 1.505-.739 1.482-1.876-.03-1.177-1.043-2.074-2.637-2.062-1.675.006-2.59.984-2.625 2.12h1.248c.036-.556.557-1.054 1.348-1.054.785 0 1.348.486 1.348 1.195.006.715-.563 1.237-1.342 1.237h-.838v1.072h.879Z"/>
            </svg>
            <span>Complete</span>
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
