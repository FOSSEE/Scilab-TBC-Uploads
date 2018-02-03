//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 2.7
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

N1=10;                          //number of turns in coil1
N2=20;                          //numeber of turns in coil2
F1=0.001;                           //flux of coil
I=5.04;                         //current in the coil

L21=N2*F1/I;

disp(L21,'flux produced by coil1 links to coil 2 in H')

