//Exa5(b)
clc;
clear;
close;
//given data is :
P=4000;//in rupees
N=9;// months
R=6;// in % per annum
//if interest is reckoned half yearly
r=R/2;// in % per half yearly,as there are 2 half years in a year
n=(N/12)*2;//in half years
Amount2=P*(1+r/100)^n;
CI2=Amount2-P;
disp(CI2,"Compound interest while reckoned half yearly :")
//Ans in the book is not correct