//Example 1.1
//Shear Stress
//Page No. 16
clc;clear;close;

y_b=2;       //in J/m^2
G=75;       //in Gpa
G=G*10^9;       //conversion to Pa
L=0.01;           //in mm
L=L*10^-3;       //conversion to m
nu=0.3;         //no unit
T=sqrt((3*%pi*y_b*G)/(8*(1-nu)*L));
T=T/10^6;
printf('Shear Stress Required to nucleate a grain boundary crack in high temperature deformation = %g MPa',T)
