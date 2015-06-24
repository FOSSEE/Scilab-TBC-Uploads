//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 12


clear;
clc;


//Given:
m = 10; //mass of air in kg
P1 = 100; //initial pressure(kPa)
T1 = 300; //initial temperature(K)
T2 = 600; //final temperature(K)
R = 8.314; //ideal gas constant(kJ/kmol K)
Cp = 29.099; //specific heat capacity at constant pressure (kJ/kmol K)
Cv = 20.785; //specific heat capacity at constsant volume (kJ/kmol K)
M = 29; //molecular weight of air

//To determine change in internal energy enthalpy heat supplied and work done
n = m/M; //number of moles of gas(kmol)
V1 = (n*R*T1)/P1; //initial volume of air (m^3)

//(a)
//Constant volume process
V2 = V1; //final volume
//Change in internal energy U = n*intg(CvdT)...so
U = n*Cv*(T2-T1); //change in internal energy(kJ)
Q = U; //heat supplied(kJ)
W = 0; //work done
H = U+(n*R*(T2-T1)); //change in enthalpy(kJ)
disp('For constant volume process');
mprintf('\nChange in internal energy is %i kJ',U);
mprintf('\nHeat supplied is %i kJ',Q);
mprintf('\nWork done is %i kJ',W);
mprintf('\nChange in enthalpy is %i kJ',H);

//(b)
//Constant pressure process
//Change in enthalpy H = n*intg(CpdT)...so 
H = n*Cp*(T2-T1); //change in enthalpy(kJ)
Q = H;//heat supplied(kJ)
U = H-(n*R*(T2-T1));//change in internal energy(kJ)
W = Q-U; //work done(kJ)
mprintf('\n\nFor constant pressure process');
mprintf('\n\nChange in internal energy is %i kJ',U);
mprintf('\nHeat supplied is %i kJ',Q);
mprintf('\nWork done is %i kJ',W);
mprintf('\nChange in enthalpy is %i kJ',H);

//end