//clear//
clear;
clc;

//Example 11.1
//From Appendix 5
Di = 1.049/12; //[ft]
Do = 1.315/12; //[ft]
xw = 0.133/12; //[ft]
km = 26; //[Btu/ft-h-F]
//Using Eq.(10.15) for Logrithmic mean diameter DL_bar 
DL_bar = (Do-Di)/log(Do/Di); //[ft]
//From Table 11.1
hi = 180; //[Btu/ft^2-h-F]
ho = 300; //[Btu/ft^2-h-F]
hdi = 1000; //[Btu/ft^2-h-F]
hdo = 500; //[Btu/ft^2-h-F]

//Overall heat transfer coefficient
Uo = 1/(Do/(Di*hdi)+Do/(Di*hi)+(xw*Do)/(km*DL_bar)+1/ho+1/hdo) //[Btu/ft^2-h-F]
