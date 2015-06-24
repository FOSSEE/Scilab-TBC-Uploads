clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.2
// Page 61
printf("Example 3.2, Page 61 \n \n");

// solution
m = 100 //[kg] weak liquor (feed)
m1 = 4 //[kg] NaOH
p = .25
x = 4/p // water left
y = 100-16 // [kg] evaporated water
printf("Amount of water that evaporated is "+string(y)+" kg.")
