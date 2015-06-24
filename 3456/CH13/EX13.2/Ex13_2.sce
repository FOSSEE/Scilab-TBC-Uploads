//Example 13.2
//Engineering Creep
//Page No. 461
clc;clear;close;

deff('y=C(f)','y=(f-32)*(5/9)');
R=1.987;               //in cal/mol K
T2=1300;            //in Fahrenheit
T1=1500;            //in Fahrenheit
T2=C(T2)+273.15;
T1=C(T1)+273.15;
e2=0.0001;            //no unit
e1=0.4;             //no unit
Q=R*log(e1/e2)/(1/T2-1/T1);
printf('\nActivation Energy = %g cal/mol',Q)
printf('\n\n\nNote: Calculation Errors in book');
