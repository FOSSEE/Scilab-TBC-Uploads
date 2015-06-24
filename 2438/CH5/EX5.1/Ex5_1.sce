//============================================================================
// chapter 5 example 1
clc;
clear;

//input data
 d       = 2*10^-3;                 //diameter in m 
 I       = 5*10^-3;                 //current in A
 e       = 1.6*10^-19;              //charge of electron in coulombs 
 a       = 3.61*10^-10;            //side of cube in m
 N       = 4;                      //number of atoms in per unit cell
 
 
//formula
//J=n*v*e

//calculation
 r       = d/2;                //radius in m
 n       = N/(a^3);            //number of atoms per unit volume in atoms/m^3
 A       = %pi*(r^2);          //area in m^2
 J       = I/A;                //current density in Amp/m^2
 v       = J/(n*e);           //average drift velocity in m/s

//result
 mprintf('velocity=%3.2e.m/s\n',v);
 
//=============================================================================
 
