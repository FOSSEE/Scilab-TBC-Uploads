//Example 3.24
clc;
clear;
close;
format('v',9);
//Given data :
h=24;//meter
b=15;//meter
g=9.81;//gravity constant
Wm=2000*g;//N/m^3
W=b*h/2*Wm;//N
w=9.81;//kN/m^2
PH=w*20^2/2*1000;//N
y=PH/W*20/3+5;//meter
e=y-b/2;//meter
MaxStress=W/b*(1+6*e/b);//N/m^2
disp(MaxStress,"Maximum stress in N/m^2 : ");
MinStress=W/b*(1-6*e/b);//N/m^2
disp(MinStress,"Minimum stress in N/m^2 : ");
//Answer in the book is slightly differ due to limited accuracy used in the book as compared to SCILAB.
