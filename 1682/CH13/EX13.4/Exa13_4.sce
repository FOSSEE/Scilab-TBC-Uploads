//Exa 13.4
clc;
clear;
close;
//given data :
volume=8000;//in units
//Process A :
disp("Process A :");
FC=500000;//in RS.
VC=175;//in Rs.
AC=FC+VC*volume;//in Rs.
disp(AC,"Annual Cost of Process A in Rs. :");

//Process B :
disp("Process B :");
FC=600000;//in RS.
VC=150;//in Rs.
AC=FC+VC*volume;//in Rs.
disp(AC,"Annual Cost of Process A in Rs. :");

//Buy option:
disp("Buy Option :");
Pprice=125;//in RS./Unit
VC=175;//in Rs.
AC=Pprice*volume;//in Rs.
disp(AC,"Annual Cost of Buy in Rs. :");
disp("Since the annual cost of buy option is the minimum among all the alternatives, the company should buy the product.")