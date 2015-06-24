//Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics

//Example 4.1
clear;
clc;

//Given
Q1 = 250;//Heat absorbed in Kcal
T1 = (260+273);//Temperature at which engine absorbs heat
T0 = (40+273);//Temperature at which engine discards heat
//To Calculate work output, heat rejected, entropy change of system,surronding & total change in entropy and the efficiency of the heat engine

//(i)Calculation of work output
W = (Q1*((T1-T0)/T1));//Work done using equations 4.7 & 4.9 given on page no 98
mprintf('(i)The work output of the heat engine is %f Kcal',W);

//(ii)Calculation of heat rejected
Q2 = (Q1*T0)/T1;
mprintf('\n (ii)The heat rejected is %f Kcal',Q2);

//(iii)Calculation of entropy
del_S1 = -(Q1/T1);//Change in the entropy of source in Kcal/Kg K
del_S2 = Q2/T0;//Change in the entropy of sink in Kcal/Kg K
del_St = del_S1+del_S2;//Total change in entropy in Kcal/Kg K
mprintf('\n (iii)Total change in entropy is %d confirming that the process is reversible',del_St);

//(iv)Calculation of efficiency
n = (W/Q1)*100;
mprintf('\n (iv)The efficiency of the heat engine is %f percent',n);
//end