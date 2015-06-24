//Example 19.5 // energy of electron 
clc;
clear;
//given data :
h=6.626D-34;// plank constant in J-s
a=.3D-9;// unit cell width in m 
p=h/(2*a);// electron momentum
m=9.1D-31;// mass of electron in Kg
E=p^2/(m*2);// formula for energy
disp(p,"electron momentum in Kg m/s")
E=E/1.6D-19;// ro convert in ev
disp(E,"energy of electron at this momentum in eV")
