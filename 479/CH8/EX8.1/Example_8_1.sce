//Chemical Engineering Thermodynamics
//Chapter 8
//Third Law of Thermodynamics

//Example 8.1
clear;
clc;

//Given
C_ps = 0.1;//Molal heat capacity of copper at 20 K
Ti = 0;//Initial temperature in K
Tf = 20;//melting point in K
Tb = 300;//boiling point in K

//To calculate the absolute entropy of copper at 300 K
//From equation 8.4(page no 164)
a = C_ps/(Tf^3);// a is the charateristic constant
C_p = [0.1 0.80 1.94 3.0 3.9 5.0];
//T1 = log(T);
T1 = [1.301 1.6021 1.7782 1.9031 2.000 2.1761];
plot(T1,C_p);
xtitle("C_p vs T1","T1","Cp");
// Area under the curve is given as
A = 7.82;
//From equation 8.5(page no 164)
S = (a*((Tf^3)/3))+A;
mprintf('The absolute entropy of copper is %f Kcal/Kgmole',S);
//end