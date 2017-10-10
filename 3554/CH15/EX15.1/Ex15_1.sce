//Exa 15.1

clc;
clear all;


// Given data
Fh=2;// kHz
Af=2;// Pass band gain

// Solution

disp(" Let C1= 0.01 micro farads ");
C=0.01;//micro farads
R=1/(2*%pi*Fh*C);// k Ohms
printf(' The calculated value of R is %.3f K ohms. Nearest practical value for R1 is 8.2 k Ohms\n',R);
//Af=1+Rf/R1;
// As Af=2. So, Rf=R1
disp(" In this case , Rf=R1= 10 k Ohms is selected ");
