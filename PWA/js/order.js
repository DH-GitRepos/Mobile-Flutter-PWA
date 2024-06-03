// BSc Computer Science, MAD5 Assignment 2 
// Written by Darren Halpin (21022839)

// ** VARIABLES ** //

// ** ELEMENT REFERENCES ** //
drinkTypeTriggerCoffee = document.getElementById("options-trigger-coffee");
drinkTypeTriggerTea = document.getElementById("options-trigger-tea");
drinkTypeTriggerChoc = document.getElementById("options-trigger-choc");
drinkTypeTriggerIced = document.getElementById("options-trigger-iced");

drinkListOptionsCoffee = document.getElementById("options-coffee");
drinkListOptionsTea = document.getElementById("options-tea");
drinkListOptionsChoc = document.getElementById("options-choc");
drinkListOptionsIced = document.getElementById("options-iced");
drinkListOptionsMilk = document.getElementById("options-milk");

// ** EVENT LISTENERS ** //

drinkTypeTriggerCoffee.addEventListener("click", toggleCoffeeListButton);
drinkTypeTriggerTea.addEventListener("click", toggleTeaListButton);
drinkTypeTriggerChoc.addEventListener("click", toggleChocListButton);
drinkTypeTriggerIced.addEventListener("click", toggleIcedListButton);

// ** FUNCTIONS ** //

// - functions to show and hide elements

window.addEventListener("load", function () {
    hideAllOptions();
});

function hideAllOptions(event) {
    drinkListOptionsCoffee.classList.remove("show");
    drinkListOptionsCoffee.classList.add("hide");
    drinkListOptionsTea.classList.remove("show");
    drinkListOptionsTea.classList.add("hide");
    drinkListOptionsChoc.classList.remove("show");
    drinkListOptionsChoc.classList.add("hide");
    drinkListOptionsIced.classList.remove("show");
    drinkListOptionsIced.classList.add("hide");
    drinkListOptionsMilk.classList.remove("show");
    drinkListOptionsMilk.classList.add("hide");
    
}

function toggleCoffeeListButton() {
    if (drinkTypeTriggerCoffee.classList.contains("clicked")) { // if button pointing down, list is open
        drinkTypeTriggerCoffee.classList.remove("clicked"); // return button to right pointing (closed position)
        // hide the list
        drinkListOptionsCoffee.classList.remove("show");
        drinkListOptionsCoffee.classList.add("hide");
    } else {
        // change button to down pointing (open position)
        drinkTypeTriggerCoffee.classList.add("clicked");
        // reset other button positions
        drinkTypeTriggerTea.classList.remove("clicked");
        drinkTypeTriggerChoc.classList.remove("clicked");
        drinkTypeTriggerIced.classList.remove("clicked");
        // show the coffee list (and hide other lists)
        drinkListOptionsCoffee.classList.remove("hide"); 
        drinkListOptionsCoffee.classList.add("show");
        drinkListOptionsTea.classList.remove("show");
        drinkListOptionsTea.classList.add("hide");
        drinkListOptionsChoc.classList.remove("show");
        drinkListOptionsChoc.classList.add("hide");
        drinkListOptionsIced.classList.remove("show");
        drinkListOptionsIced.classList.add("hide");
        drinkListOptionsMilk.classList.remove("hide");
        drinkListOptionsMilk.classList.add("show");
    }
}

function toggleTeaListButton() {
    if (drinkTypeTriggerTea.classList.contains("clicked")) { // if button pointing down, list is open
        drinkTypeTriggerTea.classList.remove("clicked"); // return button to right pointing (closed position)
        // hide the list
        drinkListOptionsTea.classList.remove("show");
        drinkListOptionsTea.classList.add("hide");
    } else {
        // change button to down pointing (open position)
        drinkTypeTriggerTea.classList.add("clicked");
        // reset other button positions
        drinkTypeTriggerCoffee.classList.remove("clicked");
        drinkTypeTriggerChoc.classList.remove("clicked");
        drinkTypeTriggerIced.classList.remove("clicked");
        // show the tea list (and hide other lists)
        drinkListOptionsCoffee.classList.remove("show"); 
        drinkListOptionsCoffee.classList.add("hide");
        drinkListOptionsTea.classList.remove("hide");
        drinkListOptionsTea.classList.add("show");
        drinkListOptionsChoc.classList.remove("show");
        drinkListOptionsChoc.classList.add("hide");
        drinkListOptionsIced.classList.remove("show");
        drinkListOptionsIced.classList.add("hide");
        drinkListOptionsMilk.classList.remove("show");
        drinkListOptionsMilk.classList.add("hide");
    }
}

function toggleChocListButton() {
    if (drinkTypeTriggerChoc.classList.contains("clicked")) { // if button pointing down, list is open
        drinkTypeTriggerChoc.classList.remove("clicked"); // return button to right pointing (closed position)
        // hide the list
        drinkListOptionsChoc.classList.remove("show");
        drinkListOptionsChoc.classList.add("hide");
    } else {
        // change button to down pointing (open position)
        drinkTypeTriggerChoc.classList.add("clicked"); 
        // reset other button positions
        drinkTypeTriggerCoffee.classList.remove("clicked");
        drinkTypeTriggerTea.classList.remove("clicked");
        drinkTypeTriggerIced.classList.remove("clicked");
        // show the choc list (and hide other lists)
        drinkListOptionsCoffee.classList.remove("show"); 
        drinkListOptionsCoffee.classList.add("hide");
        drinkListOptionsTea.classList.remove("show");
        drinkListOptionsTea.classList.add("hide");
        drinkListOptionsChoc.classList.remove("hide");
        drinkListOptionsChoc.classList.add("show");
        drinkListOptionsIced.classList.remove("show");
        drinkListOptionsIced.classList.add("hide");
        drinkListOptionsMilk.classList.remove("hide");
        drinkListOptionsMilk.classList.add("show");
    }
}

function toggleIcedListButton() {
    if (drinkTypeTriggerIced.classList.contains("clicked")) { // if button pointing down, list is open
        drinkTypeTriggerIced.classList.remove("clicked"); // return button to right pointing (closed position)
        // hide the list
        drinkListOptionsIced.classList.remove("show");
        drinkListOptionsIced.classList.add("hide");
    } else {
        // change button to down pointing (open position)
        drinkTypeTriggerIced.classList.add("clicked"); 
        // reset other button positions
        drinkTypeTriggerCoffee.classList.remove("clicked");
        drinkTypeTriggerTea.classList.remove("clicked");
        drinkTypeTriggerChoc.classList.remove("clicked");
        // show the iced list (and hide other lists)
        drinkListOptionsCoffee.classList.remove("show"); 
        drinkListOptionsCoffee.classList.add("hide");
        drinkListOptionsTea.classList.remove("show");
        drinkListOptionsTea.classList.add("hide");
        drinkListOptionsChoc.classList.remove("show");
        drinkListOptionsChoc.classList.add("hide");
        drinkListOptionsIced.classList.remove("hide");
        drinkListOptionsIced.classList.add("show");
        drinkListOptionsMilk.classList.remove("hide");
        drinkListOptionsMilk.classList.add("show");
    }
}