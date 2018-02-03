//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 2.7
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

c=0.1;                    //circumference in m
A=0.0016;                 //cross sectional area in m^2
N1=10;                    //number of turns in the coil
p=0.115;                  //amplitude permeability

L11=N1^2*A*p/c;

disp(L11,'the inductance of coil 1 in H')
