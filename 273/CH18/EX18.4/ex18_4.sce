clc;clear;
//Example 18.3
//calculation of fractionional change in no of e

//given values
T1=300;//temp in K
T2=310;//temp in K
Eg=1.1;//forbidden gap of silicon in eV
k=8.6*10^-5;//boltzmann's constant in eV/K

//calculation
n1=(10^21.7)*(T1^(3/2))*10^(-2500*Eg/T1);//no of conduction e at T1
n2=(10^21.7)*(T2^(3/2))*10^(-2500*Eg/T2);//no of conduction e at T2
x=n2/n1;
disp(x,'fractional change in no of e is');