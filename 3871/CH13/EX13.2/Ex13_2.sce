//=====================================================================================
//Chapter 13 example 2
clc;clear all;

//variable declaration
m   = 100;     //number of turns 
n    = 1000;     //turns per m
theta1  = 10;      //first throw in mm
theta2   = 9.5;   //second throw in mm
I    =10;     //current in A
R    = 500;  // resistance in Ω
A     = 0.002;    //area in m**2

//calculations
//Q   = (8*(math.pi)*(10**-7)*N*Ns*I*A)/(l*R)       //in columbs
//Q   = (8*(math.pi)*(10**-7)*n*l*m*I*A)/(l*R)
//Q   =(8*(math.pi)*(10**-7)*n*m*I*A)/(R)
lamda  = log(theta1/(theta2));
theta  = theta1*(1+(lamda/(2)));
K    =(8*(%pi)*(10^-7)*n*m*I*A)/(R*theta);    //galvanometer constant in C/mm

//result

mprintf("galvanometer constant = %3.2e C/mm",K);

