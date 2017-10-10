//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 5.6
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
W=5e-3;//Optical output power of laser in W
V=2500;//Operating voltage in V
I=10e-3;//Operating current in A

eta=W/(V*I);//Overall power efficiency
mprintf("\n Power efficiency = %.2f percent",eta*100);//Multiplying by 100 to convert in percentage
