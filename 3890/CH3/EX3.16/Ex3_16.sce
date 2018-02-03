//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 3.16
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

Q=10;
v1=440;
v2=110;
va2=550;
va1=440;

I2=Q*10^3/v2;
Qa=va2*I2;
Qc=va1*I2;
Qi=Qa-Qc;

printf('The power transferred inductively and conductively is Qc=%f Qi=%f in VA',Qc,Qi)
