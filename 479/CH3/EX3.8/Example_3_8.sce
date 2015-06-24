//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.8
clear;
clc;

//Given
m = 183;//rate of water flow in Kg/min
H1 = 95;//enthalpy of storage tank 1 in Kcal/Kg
h = 15;//height difference between two storage tanks in m
Q = -10100;//extraced heat from storage tank 1 in a heat exchanger in Kcal/min
W = -2;//work delivered by motor in hp

// To find out the  enthalpy of water tank2 and the temperature of water in the second tank
delPE = h/427;//change in potential energy in Kcal/Kg
delKE = 0;//change in kinetic energy
W1 = W*(75/427);//work delivered by motor in Kcal/sec
W2 = W1*60;//work delivered by motor in Kcal/min
H2 = ((Q+W2)/m)-delKE-delPE+H1;//enthalpy of storage tank 2 in Kcal/Kg
mprintf('The enthalpy of storage tank 2 is %f Kcal/Kg',H2);

//The enthalpy H2=39.66 corresponds to the temperature T according to steam table
T=40;//Temperature is in deg celsius
mprintf('\n The temperature of water in the second tank is %d deg celsius',T);
//end