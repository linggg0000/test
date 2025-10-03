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

    #goBack {
        cursor: pointer;
        width: 30px;
        height: 30px;
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

    /* Pagination */

    .tabs {
        display: inline-block;
        position: relative;
        padding: 8px;
        margin: 0 4px;
        gap: 8px;
        cursor: pointer;
        transition: all 0.3s ease-in-out;
    }

    .tabs.active {
        color: #E42126;
    }

    .tabs.active::after {
        content: "";
        position: absolute;
        left: 0;
        bottom: -2px;
        width: 100%;
        height: 3px;
        background: #E42126;
        border-radius: 5px;
    }

    .tabs.inactive {
        color: #D9D9D9;
    }

    .tabs.inactive::after {
        content: "";
        position: absolute;
        left: 0;
        bottom: -2px;
        width: 100%;
        height: 3px;
        background: #D9D9D9;
        border-radius: 5px;
    }

    /* Form */

    .recipientBankButton {
        border-color: #C9C9C9;
    }

    /* Completion Page */

    #cardPaymentOtherCardComplete .sendMoney-status,
    #cardPaymentOtherCardComplete .sendMoney-details {
        border-radius: 8px;
        border: 1px solid #D9D9D9;
        padding: 24px;
    }

    .sendMoney-status h5 {
        color: #45A400;
        vertical-align: middle;
    }

    .sendMoney-status .fw-semibold {
        color: #333333;
    }

    .sendMoney-status .timestamp {
        color: #666666;
    }

    .sendMoney-details span.key {
        color: #7E7E7E;
    }

    .sendMoney-details span.value {
        font-weight: 500;
        color: #6A6A6A;
    }

    /* Action Buttons */

    .actionButton button,
    .actionButton button:hover,
    .actionButton button:focus,
    .actionButton button:active {
        border-radius: 120px;
        box-shadow: none !important;
    }

    .otherCardConfirm-buttons,
    .otherCardCompletion-buttons {
        gap: 3rem;
    }

    #otherCardForm-Next,
    #otherCardConfirm-Next,
    #otherCardCompletion-Done {
        background-color: #E42126;
        color: #FFFFFF;
    }

    #otherCardConfirm-Back,
    #otherCardCompletion-Print {
        background-color: #FFFFFF;
        color: #000000;
        border: 2px solid #000000;
    }

    /* Responsive Design */

    @media (max-width: 576px) {

        /* Smaller font size below small screen */
        .mainDiv h6 {
            font-size: 0.85rem;
        }

        .mainDiv h3 {
            font-size: 1.3em;
        }

        .mainDiv h5 {
            font-size: 1.1em;
        }
    }



</style>



<div class="d-none d-lg-block"></div>

<div class="mainDiv container-fluid gx-1 gx-lg-0 mt-3 mt-lg-5 px-4 px-lg-0 mx-5 mx-xl-5 float-end">

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


    <!-- Header -->

    <div class="header-div row w-100 mx-0 mb-5 px-0 gy-2">
        <div class="col-12 d-flex flex-column justify-content-start align-items-start">
            <div id="goBack" class="rounded-circle bg-dark text-white d-flex justify-content-center align-items-center mb-2">
                <i class="bi bi-chevron-left"></i>
            </div>

            <div class="d-flex mt-2">
                <span class="text-muted text-nowrap me-2 small">Transfer & Payment > Send Money > </span>
                <span class="text-black text-nowrap small">Own Account</span>
            </div>

            <h3 class="d-inline">Own Account</h3>

            <span style="color: #6A6A6A;">Please fill in all necessary details for transfer</span>
        </div>
    </div>

    <!-- Pagination -->

    <div class="paginationDiv row w-100 d-flex flex-row flex-nowrap mb-5 mx-0 px-2">
        <div class="tabs tab1 col-auto d-flex flex-column flex-md-row flex-fill justify-content-start justify-content-md-center align-items-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-1-circle-fill flex-shrink-0" viewBox="0 0 16 16">
              <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M9.283 4.002H7.971L6.072 5.385v1.271l1.834-1.318h.065V12h1.312z"/>
            </svg>
            <span class="text-center text-md-start">Fill in Details</span>
        </div>
        <div class="tabs tab2 col-auto d-flex flex-column flex-md-row flex-fill justify-content-start justify-content-md-center align-items-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-2-circle-fill flex-shrink-0" viewBox="0 0 16 16">
              <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M6.646 6.24c0-.691.493-1.306 1.336-1.306.756 0 1.313.492 1.313 1.236 0 .697-.469 1.23-.902 1.705l-2.971 3.293V12h5.344v-1.107H7.268v-.077l1.974-2.22.096-.107c.688-.763 1.287-1.428 1.287-2.43 0-1.266-1.031-2.215-2.613-2.215-1.758 0-2.637 1.19-2.637 2.402v.065h1.271v-.07Z"/>
            </svg>
            <span class="text-center text-md-start">Verify Details</span>
        </div>
        <div class="tabs tab3 col-auto d-flex flex-column flex-md-row flex-fill justify-content-start justify-content-md-center align-items-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-3-circle-fill flex-shrink-0" viewBox="0 0 16 16">
              <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-8.082.414c.92 0 1.535.54 1.541 1.318.012.791-.615 1.36-1.588 1.354-.861-.006-1.482-.469-1.54-1.066H5.104c.047 1.177 1.05 2.144 2.754 2.144 1.653 0 2.954-.937 2.93-2.396-.023-1.278-1.031-1.846-1.734-1.916v-.07c.597-.1 1.505-.739 1.482-1.876-.03-1.177-1.043-2.074-2.637-2.062-1.675.006-2.59.984-2.625 2.12h1.248c.036-.556.557-1.054 1.348-1.054.785 0 1.348.486 1.348 1.195.006.715-.563 1.237-1.342 1.237h-.838v1.072h.879Z"/>
            </svg>
            <span class="text-center text-md-start">Complete</span>
        </div>
    </div>



    <!-- Content Region -->

    <div id="cardPaymentOtherCardContent" class="row d-flex justify-content-center px-3 border border-danger">
        <div class="col-10">

            <!-- Step 1 - Form -->

            <div id="cardPaymentOtherCardForm">
                <form>
                    <!-- From Account-->
                    <div class="row mb-4">
                        <label for="otherCardForm-FromAcc" class="col-12 form-label">From Account</label>

                        <select id="otherCardForm-FromAcc" class="form-select" aria-label="From Account">
                          <option selected>Please Select</option>
                          <option value="">4901508823 (STAFF SAVINGS ACCT-I) RM 20,253,540.02</option>
                          <option value="">4000283328 (KAKA Nick) RM 303,568.02</option>
                        </select>
                    </div>


                    <!-- Recipient Bank - Drop down -->
                    <div class="row mb-4">
                        <label for="otherCard-RecipientAcc" class="col-12 form-label">Recipient Bank</label>

                        <select id="otherCard-RecipientAcc" class="form-select" aria-label="Recipient Account">
                          <option selected>Please Select</option>
                          <option value="">3000187111 (PB SHARELINK ACCOUNT)</option>
                          <option value="">3060022027 (ACE ACCOUNT) RM 303,568.02</option>
                        </select>
                    </div>

                    <!-- Select Bank -->
                    <div class="row mb-4 border border-primary">
                        <label class="col-sm-12 form-label" name="recipientBankLabel">Recipient Bank</label>

                        <div class="dropdown mb-2 border border-success px-0">
                            <button type="button" class="recipientBankButton col-12 form-select btn bg-white border border-1 dropdown-toggle text-start" id="bankDropdownButton" name="bankDropdownButton" data-bs-toggle="dropdown" aria-expanded="false">
                                Please select <span style="font-size: 12px;"><i class="fad fa-solid fa-chevron-down float-end" style="margin-top: 6px; margin-right: 3px;"></i></span>
                            </button>

                            <input type="text" class="form-control hidden" id="hiddenSelectedBankID" name="hiddenSelectedBankID" value="">
                            <input type="text" class="form-control hidden" id="hiddenSelectedBankName" name="hiddenSelectedBankName" value="">
                            <ul class="dropdown-menu px-3" id="bankListUL" style="width:100%; z-index:0" aria-labelledby="bankDropdownButton">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control search" id="bankSearchBar" placeholder="name@example.com">
                                            <label for="bankSearchBar" class="searchLabel" name="searchLabel">Search</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row scrollable mt-3" id="beneBankDiv" style="max-height:400px;overflow:auto;"></div>
                            </ul>
                        </div>
                    </div>

                    <span class="text-danger ps-1 hidden" id="hiddenSelectBankError" name="hiddenSelectBankError"></span>

                    <!-- Recipient Card No. -->
                    <div class="row mb-4">
                        <label for="otherCard-Amount" class="col-12 form-label">Recipient Card No.</label>
                        <input type="text" id="otherCard-Amount" class="form-control" placeholder="Enter Recipient Card No.">
                    </div>

                    <!-- Amount (MYR) -->
                    <div class="row mb-4">
                        <label for="otherCardForm-Amount" class="col-12 form-label">Amount (MYR)</label>
                        <input type="text" id="otherCardForm-Amount" class="form-control" placeholder="Enter Amount">
                    </div>

                    <!-- Recipient Reference -->
                    <div class="row mb-4">
                        <label for="otherCard-Amount" class="col-12 form-label">Recipient Reference</label>
                        <input type="text" id="otherCard-Amount" class="form-control" placeholder="Enter Recipient Reference">
                    </div>

                    <!-- Transfer Date -->
                    <div class="row mb-4">
                        <label for="otherCardForm-TransferDate" class="col-12 form-label">Transfer Date</label>
                        <input type="text"  id="otherCardForm-TransferDate" class="form-control bg-white datepicker" data-form="cardPaymentOtherCardInputForm" placeholder="DD MMM YYYY">
                    </div>

                    <!-- Recurring Transaction -->
                    <div class="row mb-4">
                        <label for="otherCardForm-Recurring" class="col-12 form-label">Is this a Recurring Transaction? If so please select the frequency <span class="fw-light">(Optional)</span></label>

                        <select id="otherCardForm-Recurring" class="form-select" aria-label="Recurring Transaction">
                          <option selected>Please Select</option>
                          <option value="">Not Applicable</option>
                          <option value="">Daily</option>
                          <option value="">Weekly</option>
                          <option value="">Monthly</option>
                          <option value="">Quarterly</option>
                          <option value="">Half-Yearly</option>
                          <option value="">Yearly</option>
                        </select>
                    </div>

                    <!-- No. of Occurrences -->
                    <div class="row mb-4">
                        <label for="otherCardForm-Occurences" class="col-12 form-label">No. of Occurrences</label>

                        <select id="otherCardForm-Occurences" class="form-select" aria-label="No. of Occurrences">
                            <c:forEach var="i" begin="1" end="60" step="1">
                                <option value="">${i}</option>
                            </c:forEach>
                        </select>
                    </div>

                </form>
            </div>

            <!-- Step 2 - Confirmation -->

            <div id="cardPaymentOtherCardConfirm">
                <form>
                    <!-- From Account-->
                    <div class="row mb-4">
                        <label for="otherCardConfirm-FromAcc" class="col-12 form-label">From Account</label>
                        <input disabled type="text" id="otherCardConfirm-FromAcc" class="form-control">
                    </div>

                    <!-- Recipient Account -->
                    <div class="row mb-4">
                        <label for="otherCardConfirm-RecipientAcc" class="col-12 form-label">Recipient Account</label>
                        <input disabled type="text" id="otherCardConfirm-RecipientAcc" class="form-control">
                    </div>

                    <!-- Amount (MYR) -->
                    <div class="row mb-4">
                        <label for="otherCardConfirm-Amount" class="col-12 form-label">Amount (MYR)</label>
                        <input disabled type="text" id="otherCardConfirm-Amount" class="form-control">
                    </div>

                    <!-- Transfer Date -->
                    <div class="row mb-4">
                        <label for="otherCardConfirm-TransferDate" class="col-12 form-label">Transfer Date</label>
                        <input disabled type="text" id="otherCardConfirm-TransferDate" class="form-control">
                    </div>

                    <!-- Recurring Transaction -->
                    <div class="row mb-4">
                        <label for="otherCardConfirm-Recurring" class="col-12 form-label">Recurring Transaction</label>
                        <input disabled type="text" id="otherCardConfirm-Recurring" class="form-control">
                    </div>

                    <!-- No. of Occurrences -->
                    <div class="row mb-4">
                        <label for="otherCardConfirm-Occurences" class="col-12 form-label">No. of Occurrences</label>
                        <input disabled type="text" id="otherCardConfirm-Occurences" class="form-control">
                    </div>
                </form>
            </div>

            <!-- Step 3 - Completion -->
            <div id="cardPaymentOtherCardComplete">
                <div class="sendMoney-status row d-flex flex-column justify-content-center align-items-start">
                    <h5 class="mb-3"><i class="bi bi-check-circle me-3"></i>Transferred Successfully</h5>
                    <span class="fw-semibold">Money Sent</span>
                    <span class="timestamp">28 May 2025, 05:00:11 PM</span>
                </div>
                <div class="sendMoney-details row d-flex flex-column justify-content-center align-items-center gy-4 mt-4">
                    <div class="col-12 d-flex justify-content-between">
                        <span class="key">Reference No.</span>
                        <span class="value">83900</span>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <span class="key">Transfer Method</span>
                        <span class="value">Own Account</span>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <span class="key">Amount</span>
                        <span class="value">MYR 100.00</span>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <span class="key">Recipient Account</span>
                        <span class="value">4054228940</span>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <span class="key">From Account</span>
                        <span class="value">6530234201</span>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <span class="key">New Available Balance</span>
                        <span class="value">MYR 4923.00</span>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <div class="d-none d-lg-block" style="height: 5vh;"></div>

    <!-- Note -->

    <div id="safeNote" class="row d-flex justify-content-center mb-6">
        <div class="col-10">
            <jsp:include page="./otherCardNote.jsp" />
        </div>
    </div>

    <div class="d-none d-lg-block" style="height: 5vh;"></div>

    <!-- Action Buttons -->

    <div class="row d-flex justify-content-center actionButton">
        <div class="col-10 d-flex justify-content-end">
            <!-- Step 1 - Form -->
            <div class="otherCardForm-buttons w-100">
                <button class="btn col-auto float-end" id="otherCardForm-Next">
                    <span>Next</span>
                </button>
            </div>

            <!-- Step 2 - Confirmation -->
            <div class="otherCardConfirm-buttons w-100 d-flex justify-content-end">
                <button class="btn col-auto" id="otherCardConfirm-Back">
                    <span>Back</span>
                </button>

                <button class="btn col-auto" id="otherCardConfirm-Next">
                    <span>Send Push Notification</span>
                </button>
            </div>

            <!-- Step 3 - Completion -->
            <div class="otherCardCompletion-buttons w-100 d-flex justify-content-end">
                <button class="btn col-auto" id="otherCardCompletion-Print">
                    <span>Print Receipt</span>
                </button>

                <button class="btn col-auto" id="otherCardCompletion-Done">
                    <span>Done</span>
                </button>
            </div>
        </div>
    </div>


    <div style="height: 15vh;"></div>
</div>





<script>
	(function() {
		const scriptsToLoad = [];
		scriptsToLoad.push('resources/js/mainMenu/menuProfileCore.js?${jsDateTime}');
		scriptsToLoad.push('resources/js/mainMenu/cardPaymentOtherCardCore.js?${jsDateTime}');

		Promise.all(scriptsToLoad.map(loadScript))
		  .then((results) => { // Do something after all scripts are loaded
		    console.log('All scripts loaded successfully:', results);

		    languages = ${languages};
		    displayName = "${displayName}";

			$(document).ready(function () {
			    initMenuProfile(displayName);
			    initCardPaymentOtherCard();
		    });

            hideLoader();
		  })
		  .catch((error) => { // Handle error if any script fails to load
		    console.error('Script loading error:', error);
		  });
	})();
</script>
