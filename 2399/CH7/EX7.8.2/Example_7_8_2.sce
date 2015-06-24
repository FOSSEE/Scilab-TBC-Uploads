// Example 7.8.2 
clc;
clear;
w=20d-6;    //width
v=4d4;      //velocity
t=w/v;      //computing drift time
BW=(2*%pi*t)^-1;        //computing bandwidth
rt=1/BW;    //computing response time
rt=rt*10^9;
printf("\nMaximum response time is %.1f ns.",rt);
printf("\nNOTE - Calculation error in the book.");
//Calculation error in the book, answer given is 6.2ns
