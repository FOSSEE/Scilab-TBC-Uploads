//Calculate the Dipole-Dipole interaction energy in kJ mol^-1

//Example 16.1

clc;  

clear;

mewA=1.08*3.3356*10^-30;  //Dipole moment in C m for one molecule

mewB=1.08*3.3356*10^-30;  //Dipole moment in C m for other molecule

epsilone=8.854*10^-12;  //Molar absorptivity or molar extinction coefficient in C^2 N^-1 m^-2

r=4*10^-10; //Distance between two molecule of HCl in m

V1=-(2*mewA*mewB)/(4*%pi*epsilone*(r)^3);  //Diploe-Diplole interaction in N m

V=(V1*6.022*10^23)/1000;  //Dipole-Dipole interaction in kJ mol^-1

printf("Dipole-Dipole interaction = %.1f kJ mol^-1 ",V);
