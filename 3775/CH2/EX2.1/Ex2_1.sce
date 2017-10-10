//Ex 2.1 page 67

clc;
clear;
close;

V1=1;//V across SCR
IG=0;//A
Ih=2;//mA holding current
R=50;//ohm

// Applying kirchoff law
//VA-(IAK*R)-V1=0
VA=(Ih*10**-3*R)+V1;//V (let IAK=Ih)
printf('VA = %.2f V',VA)
