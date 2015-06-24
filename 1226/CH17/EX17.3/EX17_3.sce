clc;funcprot(0);//EXAMPLE 17.3
// Initialisation of Variables
Db=0.6;.....................//Diameter of the brake wheel in m
d=0.026;......................//Diameter of the rope in m
W=200;.......................//Dead load on the brake in N
S=30;......................//Spring balance reading in N
N=450;......................//Engine speed in rpm
//Calculations
BP=((W-S)*%pi*(Db+d)*N)/(60*1000);...............//Brake Power in KW
disp(BP,"Brake Power (in KW):")
