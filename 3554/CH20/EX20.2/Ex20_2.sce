// Exa 20.2

clc;
clear all;

// Given data

M=200;// mass in grams
Heat =1;//Sp. Heat of water(cal/gm degree)
T1=30;//Initial temperature (degree Celsius)
T2=40;//Final temperature (degree Celsius)

// Solution

Pwr_rad=4.18*M*Heat*(T2-T1); // in Watt
printf(' The power radiated = %.2f kW \n',Pwr_rad/1000);

// The answer in the textbook is mentioned as 8.3 kW but by calculation it comes out to be 8.36 kW.
