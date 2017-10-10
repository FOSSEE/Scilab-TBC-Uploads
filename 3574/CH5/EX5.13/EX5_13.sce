// Example 5.13
// Determine the expected in-rush current
// Page No. 208

clc;
clear;
close;

// Given data
kva1=5.6;             // KVA/hp lower limit from table 5.9
hp=150;               // Motor horsepower
Vline=460;            // Line voltage
kva2=6.3;             // KVA/hp upper limit from table 5.9

// Expected in-rush current

// Lower limit of expected range of in-rush current is
Ilrss=(kva1*hp*1000)/(sqrt(3)*Vline);  

// Upper limit of expected range of in-rush current is
Iulss=(kva2*hp*1000)/(sqrt(3)*Vline);  

// Display result on command window
printf("\n Lower limit of expected range of in-rush current = %0.0f A",Ilrss);
printf("\n Upper limit of expected range of in-rush current = %0.0f A",Iulss);
