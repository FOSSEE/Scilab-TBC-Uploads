//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 6.4
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

V=250;  //supply voltage
Ra=.25; //armature resistance
Rf=125;  //field resistance
Il0=5;n1=1200; //no load current and speed
Il1=52;          //full load current at certain load

If=V/Rf;
Ia0=Il0-If;
E1=V-Ia0*Ra;
Ia1=Il1-If;
E2=V-Ia1*Ra;

n2=E2*n1/E1;

printf('The full load speed is %d rpm',n2)
