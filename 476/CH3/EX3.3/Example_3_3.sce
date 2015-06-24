//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 3


clear;
clc;


//Given:
Cp = 29.3; //specific heat at constant pressure(kJ/kmol K)
R = 8.314; //ideal gas constant

//To determine heat and work effects for each step

//Step 1: Gas is heated at constant volume
T1 = 300; //temperature in K
P1 = 1; //initial pressure in bar
P2 = 2; //final pressure in bar
T2 = (P2/P1)*T1; //final temperature in K
Cv = Cp-R; //specific heat at constant volume
W1 = 0; //work done is zero as volume remains constant
Q1 = Cv*(T2-T1); //heat supplied in kJ/kmol
mprintf('For step 1');
mprintf('\nWork done in step 1 is %i',W1);
mprintf('\nHeat supplied in step 1 is %f kJ/kmol',Q1);

//Step 2: The process is adiabatic
Q2 = 0; //the process is adiabatic
P3 = 1; //pressure after step 2 in bar
gama = (Cp/Cv);
T3 = ((P3/P2)^((gama-1)/gama))*T2; //temperature after step 2
W2 = (Cv*(T2-T3)); //work done by system
mprintf('\n\nFor step 2');
mprintf('\nHeat supplied in step 2 is %i', Q2);
mprintf('\nWork done by system in step 2 is %f kJ/kmol',W2);

//Step 3: The process is isobaric
T4 = 300; //temperature after step 3 (K)
Q3 = Cp*(T4-T3); //heat supplied during step 3(kJ/kmol)
U = (Cv*(T4-T3)); //change in internal energy during step 3(kJ/kmol)
W3 = Q3-U; //Using first law of thermodynamics
mprintf('\n\nFor step 3');
mprintf('\nHeat given out by the system in step 3 is %f kJ/kmol',Q3);
mprintf('\nWork done on the system in step 3 is %f kJ/kmol',W3);

//end
