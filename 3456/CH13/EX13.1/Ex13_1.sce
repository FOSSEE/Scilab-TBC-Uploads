//Example 13.1
//Engineering Creep
//Page No. 461
clc;clear;close;

sf=3;                 //no unit
per=1/1000;           //in %
T(1)=1100;            //in Fahrenheit
T(2)=1500;            //in Fahrenheit
C(1)=30000;                //from fig 13-17 in book
C(2)=4000;                //from fig 13-17 in book
W(1)=C(1)/sf;
W(2)=C(2)/sf;
W1(1)=W(1)*0.00689;
W1(2)=W(2)*0.00689;
printf('\n-----------------------------------------------------------------------------------\n');
printf('Temperature\tCreep Strength, psi\tWorking Stress, psi\tWorking Stress, MPa\n');
printf('-----------------------------------------------------------------------------------');
printf('\n1100 F\t\t\t%i\t\t\t%i\t\t\t%g\n',C(1),W(1),W1(1));
printf('\n1500 F\t\t\t%i\t\t\t%i\t\t\t%g\n',C(2),W(2),W1(2));
