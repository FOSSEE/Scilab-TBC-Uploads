clc
clear;

printf("\n Example 9.2\n");
dx=0.5; //Thickness of wall
T1=400; //Temperartue of inner surface
T2=300; //Temperature of outer surface
K=0.7; //Thermal conductivity
A=1; //Area of heat transfer
//From equation 9.12:
Q=K*A*(T1-T2)/dx;
printf("\n The heat loss per square metre of surface = %.0f w/m^2",Q);