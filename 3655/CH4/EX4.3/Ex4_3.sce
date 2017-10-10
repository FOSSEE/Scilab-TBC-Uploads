// Example 4.3
// Computation for effective density of states in the conduction band and concentration of electrons in the semiconductor for case(A) and case(B)//
// Page no.90

clc;
clear;
close;

//Given data ;
mn=1.4*9.1*10^-31;
k=8.62*10^-5;
T=300;
h=6.626*10^-34;
P=0.25;//p=EC-EF=0.25eV
T1=400;
kT=25.9*10^-3;

//.....................................(A)...................................//

//Calculation for effective density of states in the conduction band at T=300K//
NC=2*(((2*%pi*mn*k*T*(1.60*10^-19))/(h^2))^(3/2));

//Calculation for concentration of electrons in the semiconductor//
n=NC*exp(-(P)/(kT));

//.....................................(B)...................................//

//Calculation for effective density of states in the conduction band at T=400K//
NC1=2*(((2*%pi*mn*k*T1*(1.60*10^-19))/(h^2))^(3/2));

//Calculation for concentration of electrons in the semiconductor//
n1=NC1*exp(-(P)/(kT)); 

//the concentration of electrons and effective density of states in a semiconductor are increased with the increase in the temperature//

//Displaying the result in command window
printf('\n Effective density of states in the conduction band at T=300K = %0.2f x 10^25 m^-3',NC*10^-25);
printf('\n \n Concentration of electrons in the semiconductor at T=300K = %0.2f x 10^21 m^-3',n*10^-21);
printf('\n \n Effective density of states in the conduction band at T=400K = %0.2f x 10^25 m^-3',NC1*10^-25);
printf('\n \n Concentration of electrons in the semiconductor at T=400K = %0.1f x 10^21 m^-3',n1*10^-21);



//Answers are varying due to round off error//
