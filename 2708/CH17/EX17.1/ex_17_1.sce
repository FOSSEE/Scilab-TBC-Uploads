//Example 17.1 //Uncertainty in angle of Emergence 
clc;
clear;
//given data :
E=3.2D-17;//energy of enectron in J
m=9.1D-31;// mass of electron in kg
h=6.626D-34;// plank's constant in J.sec
r=1D-6;//radius of circular hole in m
p=sqrt(2*m*E);// momentum in Kg.m/sec
delta_x=2*r;// uncetainty in position in m
delta_p=h/(delta_x);// uncertainty in momentum in Kg.m/sec
delta_theta=delta_p/p;//uncertainty in angle of emergence
disp(delta_theta," Uncertainty in angle of Emergence in radian");

 //in book it is wrongly calculated
