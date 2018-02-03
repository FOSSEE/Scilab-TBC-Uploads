//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 3.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear; 

a=5;        //turns ratio
Z=10;        //load on transformer

z1=(a^2)*Z;

printf('The impedance at primary is %d ohms',z1)
