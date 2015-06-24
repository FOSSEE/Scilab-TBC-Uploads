//Chemical Engineering Thermodynamics
//Chapter 10
//Compressor

//Example 10.3
clear;
clc;

//Given
V_d = 5.15;//displacement volume in cubic meter/min
P1 = 1;//initial pressure in Kgf/sq cm
P2 = 8.5;//final pressure in Kgf/sq cm
C = 0.06;//Clearance
M_E = 0.8;//Mechenical efficiency
y = 1.31;//gamma

//To calculate the capacity and the actual horse power of the compressor
v1 = V_d*(1+C-(C*((P2/P1)^(1/y))));
mprintf('The capacity of the copressor is %f cubic meter/min',v1);
//From equation 10.6 (page no 192)
W = (y/(y-1))*(P1*1*10^4*v1)*(1-(P2/P1)^((y-1)/y));//work in Kgf/min
W1 = W/4500;//work in hp
W2 = W1/M_E;
mprintf('\n The actual horse power of the compressor is %f hp',W2);
//end