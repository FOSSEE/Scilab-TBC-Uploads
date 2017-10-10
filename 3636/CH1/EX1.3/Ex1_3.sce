clc;
clear;
B=0.02 //flux Density in Wb/m^2
u=5*10^7 //speed of electron in m/s
e=1.6*10^-19 //electronic charge Joules
m=9.1*10^-31 //mass of electron in kg

//Calculation
r=(m*u)/(e*B) //in m

format("e",9)
disp(r,"radius of the circular path followed by electron is =")

