//Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics

//Example 4.9
clear;
clc;

//Given
m = 1;//mass of liquid water in Kg
T1 = 1350;//initial temperature in deg celsius
T2 = 400;//final temperature in deg celsius
Cp = 1;//Specific heat of water in Kcal/Kg K
Cpg = 0.2;//Specific heat of combustion gases in Kcal/Kg K
Hv = 468.35;//Heat of vapourisation at 14 Kgf/cm^2 and 194.16 deg celsius in Kcak/Kg
To = 298;//Surronding temperature
Tb = 194.16+273;//Boiling point of liquid water

//To Calculate the maximum work obtained and the entropy change
//(i)Calculation of maximum work
//Q = del_H = m*Cp*(T2-T1); gas can be assumed to cool at constant pressure
//From equation 4.14 (page no 110)
del_B = -((m*Cpg*(T2-T1))-(To*m*Cp*log((T2+273)/(T1+273))));
mprintf('(i)The maximum work that can be obtained is %f Kcal/Kg of gas',del_B);

//(ii)To Calculate the change in entropy
del_S =(m*Cp*log(Tb/To))+((m*Hv)/Tb);
mprintf('\n(ii)The entropy change per Kg of water is %f',del_S);
//end