// Exa 3.8
format('v',7);clc;clear;close;
// Given data
Rm = 500;//resistance of meter in ohm
Im = 40;//current in µA
Im = Im * 10^-6;// in A
V = 10;//voltage in V
// The required multiplier resistance 
Rs = (V/Im)-Rm;// in ohm
Rs = Rs * 10^-3;// in k ohm
disp(Rs,"The required multiplier resistance in kΩ is");
