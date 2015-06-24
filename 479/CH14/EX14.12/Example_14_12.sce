//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.12
clear;
clc;

//Given
//C + 2H2 - CH4
//Basis: 1 Kgmole of C fed
T = 1000;//Temperature in K
P1 = 2;//Pressure in atm
del_F = 4580;//Standard free energy in Kcal/Kgmole


//To Calculate the maximum CH4 concentration under the condition of 2 atm and the  quantity of methane obtained if pressure is 1 atm
Ka = %e^(-del_F/(R*T));//Equilibrium constant
//In relation (d) (page no 339) p_H2 = p (say)
p = poly(0,'p');
q = Ka*(p^2)+p-P1;
r = roots(q);
p_H2 = r(2);//partial pressure of H2
p_CH4 = P1-p_H2;//partial pressure of CH4
X_H2 = p_H2*100/P1;//mole percent of H2
X_CH4 = p_CH4*100/P1;//mole percent of CH4
mprintf('Under the conditions of 2 atm and 1000 K,the maximum CH4 concentration is %f percent and further increase is not pssible',X_CH4);
//Now.pressure has become
P2 = 1;//in atm
q = Ka*(p^2)+p-P2;
r = roots(q);
p_H2 = r(2);//partial pressure of H2
p_CH4 = P2-p_H2;//partial pressure of CH4
X_H2 = p_H2*100/P2;//mole percent of H2
X_CH4 = p_CH4*100/P2;//mole percent of CH4
mprintf('\n\n Under the conditions of 1 atm and 1000 K,Methane = %f percent and Hydrogen = %f percent',X_CH4,X_H2);
//end