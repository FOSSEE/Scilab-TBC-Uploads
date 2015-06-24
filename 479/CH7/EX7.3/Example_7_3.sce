//Chemical Engineering Thermodynamics
//Chapter 7
//Ideal Gases

//Example 7.3
clear;
clc;

//Given
P1 = 15;//initial pressure in Kgf/cm^2
P2 = 1;//final pressure in Kgf/cm^2
V1 = 0.012;//initial volume in m^3
V2 = 0.06;//final volume in m^3
T1 = 420;//initial temperature in K
M = 28;//molecular weight of the gas
Cp = 0.25;//specific heat at constant pressure in Kcal/Kg K
R = 1.98;//gas constant in Kcal/Kg mole K
R2 = 848;//gas constant in mKgf/Kgmole K
//Cv = a+0.0005*T1; Specific heat at constant volume

//To Calculate the final temperature of the ideal gas, work done in an open and closed system,internal energy change for the process
//(a)Calculation of final temperature
//Using ideal gas law:(P*V)/(R*T)
T2 = (P2*V2*T1)/(P1*V1);
mprintf('(a)The final temperature is %d K',T2);

//(b)Calculation of work in an open and closed system
//From equation 7.22(page no 147): P1*(V1^n)=P2*(V2^n)
n = (log(P2/P1))/(log(V1/V2));
//From equation 7.25(page no 149)
W = ((P1*V1)-(P2*V2))/(n-1)*10^4;//work in mKgf
W1 = W/427;//Work in Kcal
mprintf('\n (b)The work in a closed system is %f Kcal',W1);
Ws = n*W1;//from equation 7.28(page no 149)
mprintf('\n    The work in an open system is %f Kcal',Ws);

//(c)Calculation of internal energy change
R1 = R/M;//gas constant in Kcal/Kg
Cv = Cp-R1;//specific heat at constant volume in Kcal/Kg K
a = Cv-(0.0005*T1);
m = (P1*10^4*V1*M)/(R2*T1);//mass of gas in Kg
function y = f(T)
    y = m*(a+(0.0005*T));
endfunction
del_E = intg(T1,T2,f);//internal energy change in Kcal/Kg
del_E1 = M*del_E;//internal energy change in Kcal/Kgmole
mprintf('\n (c)The internal energy change for the process is %f Kcal/Kgmole',del_E1);