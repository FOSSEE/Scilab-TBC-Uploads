//Tested on Windows 7 Ultimate 32-bit
//Chapter 2 Fundamental Concepts: Energy Bands in Solids Pg no. 50 and 51
clear;
clc;

//Given Data
m0=9.1D-31;//mass of electron in kg
v_to_c_ratio=0.2;

//Solution

m=m0/sqrt(1-v_to_c_ratio^2);//mass of electron in kg

printf("Mass of electron for v=0.2c is equal to m=%.2e kg",m);
