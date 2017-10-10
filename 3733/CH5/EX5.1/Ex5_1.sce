// Example 5_1
clc;clear;funcprot(0);
// Given data
P=100;// Plant capacity in Mw
CV=25600;// Calorific value in kJ/kg
n_th=30;// The thermal efficiency of the plant in %
n_eg=92;// Electrical generation efficiency in %

// Calculation
// Mechanical energy available=W*CV*(n_th/100) in kJ/hr
// Electrical energy available=W*CV*(n_th/100)*(n_eg/100) in kJ/hr
q_e=P*10^3*3600;// Heat equivalent in kJ/hr
W=(q_e/(CV*(n_th/100)*(n_eg/100)));// The coal required per hour in kg/hr
W=(W/1000);// The coal required per hour in tons/hr
printf('\nThe coal required per hour,W=%0.2f tons/hr',W);
