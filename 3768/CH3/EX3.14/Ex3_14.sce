//Example number 3.14, Page number 51

clc;clear;
close;

//Variable declaration
Ev=68*10**3;    //enthalpy(j/mol)
R=8.314;
T1=300;    //temperature(K)
T2=800;   //temperature(K)
//Calculation
x1=-Ev/(R*T1);
x2=-Ev/(R*T2);
n=%e**(x1)/%e**(x2);      //ratio of number of vacancies
//Result
printf("ratio of number of vacancies is %.2e",n)
//answer in the book varies due to rounding off errors
