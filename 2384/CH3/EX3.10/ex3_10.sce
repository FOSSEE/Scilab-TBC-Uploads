// Exa 3.10
clc;
clear;
close;
format('v',7)
// Given data
V1= 100/sqrt(2)*expm(%i*0*%pi/180);// in V
V2= 200/sqrt(2)*expm(%i*60*%pi/180);// in V
V3= 50/sqrt(2)*expm(%i*-90*%pi/180);// in V
V4= 150/sqrt(2)*expm(%i*-45*%pi/180);// in V
// The R.M.S. value of the resultant 
V_R= real(V1)+real(V2)+real(V3)+real(V4);// in V
disp(V_R,"The R.M.S. value of the resultant in volts is : ")

