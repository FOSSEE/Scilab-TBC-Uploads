clc;
clear;
printf("\t\t\tChapter12_example6\n\n\n");
//  Determination of the heat that must be supplied to each of the isothermal surfaces, and also the temperature of the insulated surface. 
// we can apply the equations as follows
// q1=sigma*A1*[(T1^4-T2^4)F12+(T1^4-T3^4)F13]..... (1)
// q2=sigma*A2*[(T2^4-T1^4)F21+(T2^4-T3^4)F23]..... (2)
// q3=sigma*A3*[(T3^4-T1^4)F31+(T3^4-T2^4)F32]..... (3)
// given data:
T1=1000;
T3=500;
q2=0;
F12=1/2;
F13=1/2;
F21=1/2;
F23=1/2;
F31=1/2;
F32=1/2;
T2=[(T1^4+T3^4)/2]^(1/4); // using equation (2)
printf("\nThe temperature T2=%.1f degree R",T2);
sigma=0.1714e-8; // Stefan-Boltzmann constant
q1_A1=sigma*[(T1^4-T2^4)*F12+(T1^4-T3^4)*F13]; // using equation (1)
printf("\nThe heat flux through area A1 is %d BTU/(hr.sq.ft)",q1_A1);
q3_A3=sigma*[(T3^4-T1^4)*F31+(T3^4-T2^4)*F32]; // using equation (3)
printf("\nThe heat flux through area A3 is %d BTU/(hr.sq.ft)",q3_A3);
printf("\nThe results are logical in that the heat entering the system (the oven itself) must equal that which leaves under steady-state conditions.");
