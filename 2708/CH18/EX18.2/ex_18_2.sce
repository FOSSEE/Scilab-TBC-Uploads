//Example 18.2 // Energy difference  
clc;
clear;
//given data :
h=1.0545D-34;// averge Plank's constant in J-s
m=9.1D-31;// mass of electron in kg
a=1D-10;// dimension of box in meter
E1=((h^2)/(2*m))*(%pi/a)^2;//fermi energy of first level in j
E2=2*((h^2)/(m))*(%pi/a)^2;//fermi energy of second level in J
D=E2-E1;// difference of energy 
disp(D,"energy difference in J")
