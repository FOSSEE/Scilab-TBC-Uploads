// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 11, Example 8")
//Two concentric spheres of diameters D1=0.5m and D2=1m are separated by an air space.
//The surface tempratures are T1=400K and T2=300K
T1=400;
T2=300;
D1=0.5;
D2=1;
//A1 and A2 are the areas in m^2 of surface 1 and surface 2 respectively
A1=(%pi*D1^2);
A2=(%pi*D2^2);
//Stefan-Boltzman constant(sigma)=5.67*10^-8 W/(m^2*K^4)
sigma=5.67*10^-8;
//The emissivity is represented by emi 
//The radiation heat exchange in case of two concentric sphere is given by Q=[A1*sigma*(T1^4-T2^4)]/[(1/emi1)+(A1/A2)*(1/emi2-1)] 
//When the spheres are black emi1=emi2=1
emi1=1;
emi2=1;
//Hence Q=A1*sigma*(T1^4-T2^4)
disp("The net rate of heat exchange between the spheres when the surfaces are black is Q=A1*sigma*(T1^4-T2^4) in W ")
Q=A1*sigma*(T1^4-T2^4)
//The net rate of radiation exchange when one surface is gray and other is diffuse having emi1=0.5 and emi2=0.5  
emi1=0.5;
emi2=0.5;
disp("The net rate of radiation exchange when one surface is gray and other is diffuse is given by Q1=[A1*sigma*(T1^4-T2^4)]/[(1/emi1)+(A1/A2)*(1/emi2-1)] in W")  
Q1=[A1*sigma*(T1^4-T2^4)]/[(1/emi1)+(A1/A2)*(1/emi2-1)]
//The net rate of radiation exchange when outer surface is assumed to be black body i;e(emi2=1)
emi2=1;//emissivity of outer surface
disp("The net rate of radiation exchange when outer surface is assumed to be black body i;e(emi2=1) in W")
Q2=[A1*sigma*(T1^4-T2^4)]/[(1/emi1)+(A1/A2)*(1/emi2-1)]
disp("Error(E) is given By [(Q2-Q1)/Q1]*100 in percentage")
E=[(Q2-Q1)/Q1]*100














