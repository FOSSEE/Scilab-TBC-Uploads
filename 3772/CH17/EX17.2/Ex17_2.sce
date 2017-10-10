//Ex no.17.2,Page no.380
clc;
clear;
close;

//Initilization of Variables

d=6 //cm //diameter of rod
L=40 //cm //Length of steel plate
P=12 //KN //Load
sigma=180 //MPa //Allowable stress

//Calculations

A=%pi*4**-1*d**2 //cm**2 //Area of rod
M=P*10**3*L //Ncm

F=M*A**-1 //N/cm //Force per unit cm of weld at top and bottom

V_s=P*10**3*(%pi*d)**-1 //N/cm //vertical shear

R=(F**2+V_s**2)**0.5 //N/cm //resultant Load

S=R*(sigma)**-1*10**-2 //cm //size of weld

//Result
printf("Size of weld is %.2f cm",S)
