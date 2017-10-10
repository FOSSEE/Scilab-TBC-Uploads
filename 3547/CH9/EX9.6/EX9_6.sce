// Example 9.6
// Calculation of the ODTM to multiplex data.
// Page no 411

clc;
clear;
close;

//Given data
f1=10*10^9;
f2=40*10^9;


// The ODTM to multiplex data
b1=1/(f1);
b2=1/(f2);
b1=b1*10^12;
b2=b2*10^12;

//Displaying results in the command window            
printf("\n Bit interval for 10 Gb/s signal is  = %0.0f ps ",b1);
printf("\n Bit interval for 40 Gb/s signal is = %0.0f ps ",b2);

// The answers vary due to round off error
