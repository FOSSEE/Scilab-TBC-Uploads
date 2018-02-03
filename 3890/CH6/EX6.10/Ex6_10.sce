//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 6.10
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

v=230;          //supply voltage in v
I1=80;          //line current  in A
N1=750;      //speed at I1 in rpm
n=15;       //number of turns per pole
Rf=0.11;     //field resistance in ohm
Ra=0.14;      //armature resistance in ohms
I2=20;       //line current in A

E1=v-I1*(Rf+Ra);
E2=v-I2*(Rf+Ra);
At1=n*I1;
At2=n*I2;
phi1=4.3*10^3;phi2=1.4*10^3;     //from Appendix 3 in wb
N2=N1*E2*phi1/(E1*phi2);

printf('The motor speed at I2 is %f rpm',N2)

