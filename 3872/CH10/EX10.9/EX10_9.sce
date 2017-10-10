//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 10 ; Example 10.9
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

Srated = 10;                                         //power rating in MVA
Vprtr = 80;                                          //primary side of transformer voltage in kV
Vsectr = 20;                                         //secondary side of transformer voltage in kV
CTratiopr = 150/5;                                   //primary CT ratio
CTratiosec = 600/5;                                  //secondary CT ratio
I1rated = (Srated*10^6)/(Vprtr*10^3);                //rated current 1 in Amperes
I2rated = (Srated*10^6)/(Vsectr*10^3);               //rated current 2 in Amperes
I1 = I1rated/CTratiopr;                              //differential current 1 in Amperes
I2 = I2rated/CTratiosec;                             //differential current 2 in Amperes
I = I1-I2;                                           //differential current at rated conditions in Amperes
k = 0.5/2.25;                                        //from figure 10.34
printf('The value of k is %f',k);
