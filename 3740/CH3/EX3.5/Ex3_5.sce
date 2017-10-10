//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 3.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given appropriate refractive indices for ADP :-
n0w=1.4943;
new=1.4603;
n02w=1.5132;
ne2w=1.4712;

Thetam=asind(sqrt((n0w^(-2)-n02w^(-2))/(ne2w^(-2)-n02w^(-2))));//Phase matching angle for the ADP
mprintf("Thetam = %d degrees", Thetam);//The answer provided in the textbook is wrong
