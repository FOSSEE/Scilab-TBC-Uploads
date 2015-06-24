//Exa5(c)
clc;
clear;
close;
//given data is :
P=4000;//in rupees
N=9;// months
R=6;// in % per annum
//if interest is reckoned yearly
r=R;// in % per annum
n=(N/12);//in years
Amount3=P*(1+r/100)^n;
CI3=Amount3-P;
disp(CI3,"Compound interest while reckoned yearly :")
//Ans in the book is not correct