//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 2.5
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

N1=10;                             //number of turns in coil 1
F1=0.001;                           //flux of coil 1
I1=5.04;                             //current in coil 1

L11=N1*F1/I1;                        //self inductance of the coil 1 in H

disp(L11,'the self inductance of the coil in H')

N2=100;                                   //assume 100 turns
L=N2*F1/I1;

disp(L,'the self inductance for 100 turs coil in H')

