clc;
//page no 504
//prob no. 14.20
//Frwd power in Tx line is 150W,Reverse power=20W
Pi=150;Pr=20;//All power in watt
//Determination of SWR
SWR=(1+sqrt(Pr/Pi))/(1-sqrt(Pr/Pi));
disp(SWR,'The value of SWR is');