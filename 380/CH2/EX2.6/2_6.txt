//Caption:Find the magnetic flux density
//Exa:2.6
clc;
clear;
close;
u_o=4*%pi*10^-7;//permeablity of air
u_r=1200;//permeablity of magnetic material
N=1500;//No. of turns
I=4;//current in the coil (in Amperes)
r_i=10*10^-2;//inner radii of magnetic core (in meters)
r_o=12*10^-2;//outer radii of magnetic core (in meters)
r_m=(r_i+r_o)/2;//mean radii of magnetic core (in meters)
l_g=1*10^-2;//length of air gap (in meters)
l_m=2*%pi*(r_m-l_g);//in meters
//Refer to fig:-2.14
A_m=(r_o-r_i)^2;//cross-sectional  area of magnetic path (in meter^2)
R_m=l_m/(u_o*u_r*A_m);//reluctance of magnetic material
R_g=l_g/(u_o*A_m);//reluctance of air gap
//R_m and R_g in sereis
R=R_m+R_g;
B_m=N*I/(R*A_m);//magnetic flux density (in Tesla)
disp(B_m,'magnetic flux density (in Tesla)=')