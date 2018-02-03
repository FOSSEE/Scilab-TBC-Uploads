//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 6.6
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

P=50*10^3;
V=250;
Ra=.06;
Rf=125;
Vd=2;
Rse=0.04;

I=P/V;
V1=I*Rse;
Vf=V+V1;
If=Vf/Rf;
Ia=I+If;
Va=Ia*Ra;
E=V+Va+V1+Vd;

printf('The terminal voltage is %f V\n',Va);
printf('the induced emf is %f V',E);
