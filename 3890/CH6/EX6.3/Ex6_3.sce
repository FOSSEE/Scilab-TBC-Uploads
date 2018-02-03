//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 6.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

z=576;       //no of conductors
Ia=123.5;     //armature current in A
f=20*10^-3;   //flux in wb
w=150;        //angular velocity in rad/s

Te=z*f*Ia/(2*3.14);
E=Te*w/Ia;

printf('The induced emf is %f V',E) 
