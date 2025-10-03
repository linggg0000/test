var initCardPaymentOtherCard = function() {
    initCardPaymentOtherCardPage();
    initEventListeners();
}

function initCardPaymentOtherCardPage() {
    // Tabs
    $(".tab1").removeClass("inactive").addClass("active");
    $(".tab2").removeClass("active").addClass("inactive");
    $(".tab3").removeClass("active").addClass("inactive");

    // Content Region
    $("#cardPaymentOtherCardForm").removeClass("hidden");
    $("#cardPaymentOtherCardConfirm").addClass("hidden");
    $("#cardPaymentOtherCardComplete").addClass("hidden");

    // Action Buttons
    $(".otherCardForm-buttons").removeClass("hidden");
    $(".otherCardConfirm-buttons").addClass("hidden");
    $(".otherCardCompletion-buttons").addClass("hidden");
}

function initEventListeners() {

    $("#goBack").off("click").click(function() {
        AjaxTransferPayment();
    });

    // Recipient Bank

    $("#bankSearchBar").on("keyup", function() {
        bankSearchConfig("bankSearchBar", "beneBankDiv");
    });

	$("#bankDropdownButton").on("click", function() {
		$("#bankSearchBar").focus();
	});

	$("#beneBankDiv li").on("click", function() {
		let selectedBankId = $(this).val();
		let selectedBankName = $(this).text();
		let selectedBankImgSource = $(this).find("img").attr("src");

		$("#beneBankDiv li").removeClass("active");
		$(this).addClass("active");

		let btnContent = "<div class=\"row\"><div class=\"col-1 p-0 px-2\" style=\"max-width: 28px;\"><img src='" + selectedBankImgSource + "' width=\"25px\"></div>";
		btnContent += "<div class=\"col-10 overflow-hidden selectedBankNameDiv\"><span class=\"selectedBankName\">" + selectedBankName + "</span></div>";

		$("#hiddenSelectedBankId").val(selectedBankId);
		$("#hiddenSelectedBankName").val(selectedBankName);
		$("#hiddenSelectBankError").html("");

//		To reset search bar value
		$("#bankSearchBar").val("");
		$("#bankSearchBar").trigger("keyup");

		$("#bankDropdownButton").html(btnContent);

		validateDnReqForm();
	});


    // Pagination tabs navigation
    $(".tab1").on("click", function() {
        $(".tab2").removeClass("active").addClass("inactive");
        $(".tab3").removeClass("active").addClass("inactive");
        $(".tab1").removeClass("inactive").addClass("active");

        $("#sendMoneyotherCardountConfirm").addClass("hidden");
        $("#sendMoneyotherCardountComplete").addClass("hidden");
        $("#sendMoneyotherCardountForm").removeClass("hidden");

        $(".otherCardConfirm-buttons").addClass("hidden");
        $(".otherCardCompletion-buttons").addClass("hidden");
        $(".otherCardForm-buttons").removeClass("hidden");

        $(".profilePic")[0].focus();
    });

    $(".tab2").on("click", function() {
        $(".tab1").removeClass("active").addClass("inactive");
        $(".tab3").removeClass("active").addClass("inactive");
        $(".tab2").removeClass("inactive").addClass("active");

        $("#sendMoneyotherCardountForm").addClass("hidden");
        $("#sendMoneyotherCardountComplete").addClass("hidden");
        $("#sendMoneyotherCardountConfirm").removeClass("hidden");

        $(".otherCardForm-buttons").addClass("hidden");
        $(".otherCardCompletion-buttons").addClass("hidden");
        $(".otherCardConfirm-buttons").removeClass("hidden");

        $(".profilePic")[0].focus();
    });

    $(".tab3").on("click", function() {
        $(".tab1").removeClass("active").addClass("inactive");
        $(".tab2").removeClass("active").addClass("inactive");
        $(".tab3").removeClass("inactive").addClass("active");

        $("#sendMoneyotherCardountForm").addClass("hidden");
        $("#sendMoneyotherCardountConfirm").addClass("hidden");
        $("#sendMoneyotherCardountComplete").removeClass("hidden");

        $(".otherCardForm-buttons").addClass("hidden");
        $(".otherCardConfirm-buttons").addClass("hidden");
        $(".otherCardCompletion-buttons").removeClass("hidden");

        $(".profilePic")[0].focus();
    });

    // Form page buttons navigation

    $("#otherCardForm-Next").on("click", function() {
        $(".tab1").removeClass("active").addClass("inactive");
        $(".tab3").removeClass("active").addClass("inactive");
        $(".tab2").removeClass("inactive").addClass("active");

        $("#sendMoneyotherCardountForm").addClass("hidden");
        $("#sendMoneyotherCardountComplete").addClass("hidden");
        $("#sendMoneyotherCardountConfirm").removeClass("hidden");

        $(".otherCardForm-buttons").addClass("hidden");
        $(".otherCardCompletion-buttons").addClass("hidden");
        $(".otherCardConfirm-buttons").removeClass("hidden");

        $(".profilePic")[0].focus();
    });

    // Confirmation page buttons navigation

    $("#otherCardConfirm-Back").on("click", function() {
        $(".tab2").removeClass("active").addClass("inactive");
        $(".tab3").removeClass("active").addClass("inactive");
        $(".tab1").removeClass("inactive").addClass("active");

        $("#sendMoneyotherCardountConfirm").addClass("hidden");
        $("#sendMoneyotherCardountComplete").addClass("hidden");
        $("#sendMoneyotherCardountForm").removeClass("hidden");

        $(".otherCardConfirm-buttons").addClass("hidden");
        $(".otherCardCompletion-buttons").addClass("hidden");
        $(".otherCardForm-buttons").removeClass("hidden");

        $(".profilePic")[0].focus();
    });

    $("#otherCardConfirm-Next").on("click", function() {
        $(".tab1").removeClass("active").addClass("inactive");
        $(".tab2").removeClass("active").addClass("inactive");
        $(".tab3").removeClass("inactive").addClass("active");

        $("#sendMoneyotherCardountForm").addClass("hidden");
        $("#sendMoneyotherCardountConfirm").addClass("hidden");
        $("#sendMoneyotherCardountComplete").removeClass("hidden");

        $(".otherCardForm-buttons").addClass("hidden");
        $(".otherCardConfirm-buttons").addClass("hidden");
        $(".otherCardCompletion-buttons").removeClass("hidden");

        $(".profilePic")[0].focus();
    });

    // Completion page buttons navigation


}



function AjaxTransferPayment() {
   console.log("Routing to #transferPayment2");
   showLoader();
   $.ajax({
       url: "transferPayment2",
       type: "POST",
       cache: false,
       data: "{}",
       contentType: "application/json; charset=utf-8",
       success: function (result) {
           checkHtmlContent(result);
           hideLoader();
       },
       error: function (result) {
           console.log("Error when routing to #sendMoney");
           hideLoader();
           displayErrorPopup(generalErrorMessage);
       }
   });
}

function bankSearchConfig(searchBarId, contentDiv) {
	var value = document.getElementById(searchBarId).value.toUpperCase();
	var bankListLi = document.getElementById(contentDiv).getElementsByTagName("li");

	for(var i = 0; i < bankListLi.length; i++) {
		var a = bankListLi[i].innerText;
		if (a.toUpperCase().indexOf(value) > -1) {
			bankListLi[i].style.display = "";
		} else {
			bankListLi[i].style.display = "none";
		}
	}
}
