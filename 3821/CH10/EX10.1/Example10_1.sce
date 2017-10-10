/////Chapter 10 Properties Of Steam
////Example 10.1 Page No:183
///Find Dryness fuction of steam
///Input data
clc;
clear;
mw=15;      //Water steam
ms=185;     //Dry steam

///Calculation
x=((ms)/(ms+mw))*100; //Dryness fuction of steam in %

///Output
printf('Dryness fuction of steam= %f percent \n',x);
