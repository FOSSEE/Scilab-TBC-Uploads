//Exa 1.4
clc;
clear;
close;
format('v',9);

//Given Data :
m=500;//Kg
g=7.925;//m/s^2
Z=40;//Km
C=2400;//Kmph
PE=m*g*Z*1000;//Nm
disp("Relative to earth.");
disp(PE,"Potential Energy in Nm : ");
KE=m*(C*1000/3600)^2/2;//Nm
disp(KE,"Kinetic Energy in Nm : ");
disp("Relative to moon.");
w=2.94*m;//Nm
PE=w*Z*1000;//Nm
disp(PE,"Potential Energy in Nm : ");
KE=m*(C*1000/3600)^2/2;//Nm
disp(KE,"Kinetic Energy in Nm : ");
