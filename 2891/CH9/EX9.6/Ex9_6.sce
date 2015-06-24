//Exa 9.6
clc;
clear;
close;
//given :
Dmax=80 //distance in Km
Ht=100 // height of transmitting antenna in meter
// formula : Dmax=sqrt(17*Ht)+sqrt(17*Hr)
Hr=(Dmax-(sqrt(17*Ht)))^2/17 // height of receiving antenna in m
disp(Hr,"height of receiving antenna in m")
