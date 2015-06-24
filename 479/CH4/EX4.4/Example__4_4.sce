//Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics

//Example 4.4
clear;
clc;

//Given
m1 = 10;//mass of metal block in Kg
m2 = 50;//mass of water in Kg
Cp1 = 0.09;//Specific heat of metal block in Kcal/Kg K
Cp2 = 1;//Specific heat of water in Kcal/Kg K
T1 = 50;//Initial temperature of block in deg celsius
T2 = 25;//Final temperature of block in deg celsius

//To calculate the total change in entropy
//Heat lost by block = Heat gained by water
Tf = ((m1*Cp1*T1)+(m2*Cp2*T2))/((m1*Cp1)+(m2*Cp2));//final temperature of water in deg celsius
Tf1 = Tf+273.16;//final temperature in K
del_S1 = m1*Cp1*log(Tf1/(T1+273));//change in entropy of the block in Kcal/K
del_S2 = m2*Cp2*log(Tf1/(T2+273));//change in entropy of the block in Kcal/K
del_St = del_S1+del_S2;
mprintf('The total change entropy is %f Kcal/K',del_St);
//end