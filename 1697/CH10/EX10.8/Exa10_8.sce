//Exa 10.8
clc;
clear;
close;
//given data :
H=200;//in Km
Beta=20;//in Degree
a=6370;//in Km
D_flat=2*H/tan(Beta*%pi/180);//in Km
disp(D_flat,"If earth assumed to be flat transmission path distance in Km : ");
D_curved=2*a*[(90*%pi/180-Beta*%pi/180)-asin(a*cos(Beta*%pi/180)/(a+H))]
disp(D_curved,"If earth assumed to be curved transmission path distance in Km : ");