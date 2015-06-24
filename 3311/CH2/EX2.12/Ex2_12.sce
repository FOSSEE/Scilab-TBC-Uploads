// chapter 2
// example 2.12
// Calculate one cycle surge current rating
// page-54-55
clear;
clc;
// given
I_sub=3000; // in A (half cycle surge current rating)
f=50; // in Hz (supply frequency)
T=100, t=50; // time ration for one and half cycle respectively
// calculate
// I^2*T=I_sub^2*t, therefore we get
I=sqrt(I_sub^2*(t/T)); // calculation of one cycle surge current rating
printf("\nThe one cycle surge current rating \tI= %.2f A",I);
rating=(I_sub/(5*sqrt(2)))^2*(1/(2*f)); // calculation of i^2*t rating
printf("\n\nThe i^2*t  rating is \t %.f A^2.s",rating);
// Note: The answer in the book for i^2*t  rating is wrong due to calculation mistake