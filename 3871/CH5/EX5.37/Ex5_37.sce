//===========================================================================
//chapter 5 example 37
clc;
clear all;

//variable declaration
V1          = 240;      //voltage in V
theta1          = 300;          // defelection in °
theta2          = 180;          // defelection in °

//calculations
//T praportional to V^2/Z)*(f*cos(alpha)*(sin(beta)))
//T praportional V^2
//theta praportional to V^2
V2          = V1*sqrt(theta2/theta1);

//result
mprintf("voltage for deflection of 180° =%3.0f° ",V2);
