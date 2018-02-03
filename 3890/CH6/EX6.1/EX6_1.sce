//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 6.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

N=1750;      //speed of the machine in rpm
Z=728;       //no of conductors
f=25*10^(-3);  //flux per pole 

E=f*N*Z/60;      //since P=A

printf('the voltage induced is %f V',E)
