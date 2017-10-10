//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 2.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
//Let the quanity 'me/m' be denoted by M
M=0.26;
Epsilonr=11.8//relative permittivity of Si

Ed=13.6*M/(Epsilonr^2);//Energy required to excite the electrons from donor levels to the conduction band in eV
mprintf("Ed = %.3f eV", Ed);
