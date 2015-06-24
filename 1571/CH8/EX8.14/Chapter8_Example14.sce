clc
clear

//INPUT
v1=10^3;//inital volume in cc
v2=2*v1;//final volume in cc
p1=76*13.6*981;//pressure in dyne/sq.cm
t1=273;//intial temperature in K
d=1.29;//density of the gas gm/lit
cv=0.168;//specific heat at constant volume in cal/gm

//CALCULATIONS
t2=(v2/v1)*t1;//final temperature in K
r=0.068;//universal gas constant in cal
cp=cv+r;//specific heat at constant pressure in cal
q=d*cp*(t2-t1);//heat supplied in cal

//OUTPUT
mprintf('the heat supplied to the gas is %3.2f cal',q)
