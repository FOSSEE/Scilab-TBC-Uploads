//Exa5(a)
clc;
clear;
close;
//given data is :
P=4000;//in rupees
N=9;// months
R=6;// in % per annum
//if interest is reckoned quarterly
r=R/4;// in % per quarter,as there are 4 quarters in a year
n=(N/12)*4;//in quarters
Amount1=P*(1+r/100)^n;
CI1=Amount1-P;
disp(CI1,"Compound interest while reckoned quarterly :")
//Ans in the book is not correct