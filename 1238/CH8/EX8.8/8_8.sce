//calculating value of resistor//
//example 8//
clc
//clears the command window//;
clear
//clears// 
R=640*(10^3);//resistor for LSB//
R1=R/32;//resistor for MSB;since 6 bit,hence LSB is divided by 32//
printf('resistor for msb=%d ohm',R1);//displaying result//
