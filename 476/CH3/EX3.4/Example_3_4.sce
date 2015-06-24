//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 4


clear;
clc;


//Given:
R = 8.314; //ideal gas constant
Cp = 30; //specific heat at constant pressure(J/mol K)

//To calculate change in internal energy change in enthalpy work done and heat supplied

//(a): Gas is expanded isothermally
T = 600; //temperature in K
P1 = 5; //initial pressure in bar
P2 = 4; //final pressure in bar
U1 = 0; //since the process is isothermal
H1 = 0; //since the process is isothermal
W1 = (R*T*log(P1/P2)); //work done during the process
Q1 = W1; //heat supplied during the process
mprintf('When gas is expanded isothermally');
mprintf('\nChange in internal energy in isothermal process is %i',U1);
mprintf('\nChange in enthalpy in isothermal process is %i',H1);
mprintf("\nWork done during the process is %f kJ/kmol",W1);
mprintf('\nHeat supplied during the process is %f kJ/kmol',Q1);

//(b): Gas is heated at constant volume
V = 0.1; //volume (m^3)
P1 = 1; //initial pressure(bar)
T1 = 298; //initial temperature(K)
T2 = 400; //final temperature(K)
n = ((P1*V*10^5)/(R*T1)); //number of moles of gas
Cv = Cp-R; //specific heat at constant volume(J/mol K)
U2 = n*Cv*(T2-T1); //change in internal energy(J)
H2 = n*Cp*(T2-T1); //change in enthalpy(J)
W2 = 0; //isochoric process
Q2 = U2+W2; //heat supplied(J)
mprintf('\n\nWhen gas is heated at constant volume');
mprintf('\nChange in internal energy is %f J',U2);
mprintf('\nChange in enthalpy is %f J',H2);
mprintf('\nWork done during the process is %i ', W2);
mprintf('\nHeat supplied during the process is %f J',Q2);

//end