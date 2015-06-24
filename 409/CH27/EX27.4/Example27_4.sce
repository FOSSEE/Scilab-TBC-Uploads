clear ;
clc;
// Example 27.4
printf('Example 27.4\n\n');
//page no. 845
// Solution Fig.E27.4

// Given 
LHV = 36654 ;// LHV value of fuel - [kJ/ cubic metre]
Q1 = 16 ;//- [kJ/ cubic metre]
Q2 = 0 ;//- [kJ/ cubic metre]
Q3 = 2432 ;//- [kJ/ cubic metre]
Q4 = 32114 ;//- [kJ/ cubic metre]
Q41 = 6988 ;//- [kJ/ cubic metre]
Q8 = 1948 ;//- [kJ/ cubic metre]
Q9 = 2643 ;//- [kJ/ cubic metre]
Q81 = 2352 - Q8 ;// - [kJ/ cubic metre]
Q567 = 9092 ;// Sum of Q5, Q6 and Q7- [kJ/ cubic metre]

//(a)
G_ef = (LHV+ Q1 +Q2 + Q3 - Q9)/(LHV) ;// Gross efficiency
printf('(a) Gross efficiency is %.3f .\n',G_ef) ;

//(b)
T_ef = (Q567+Q8)/(LHV+ Q1 +Q2 + Q3) ;//Thermal efficiency 
printf(' (b) Thermal efficiency is %.3f .\n',T_ef) ;

//(c)
C_ef = Q4/(Q4 + Q41) ;// Combustion efficiency
printf(' (c) Combustion efficiency is %.3f .\n',C_ef) ;