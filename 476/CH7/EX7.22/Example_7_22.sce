//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 22


clear;
clc;


//Given:
C_water = 4.18*10^3; //heat capacity of water (J/kg K)
C_ethanol = 2.58*10^3; //heat capacity of ethanol (J/kg K)
G1 = -758; //heat of mixing 20 mol percent ethanol water at 298 K(J/mol)
G2 = -415; //heat of mixing 20 mol percent ethanol water at 323 K (J/mol)
n_wat = 0.8; //moles of water
n_eth = 0.2; //moles of ethanol
T1 = 323; //initial temperature in K
T2 = 298; //final temperature in K

//To calculate the mean heat capacity of 20 mol percent solution
//The whole process is divided in 4 steps

//Step 1: Water is cooled from 323 K t0 298 K
H1 = n_wat*18*C_water*(T2-T1)/1000; //(J)

//Step 2: Ethanol is cooled from 323 to 298 K
H2 = n_eth*46*C_ethanol*(T2-T1)/1000; //(J)

//Step 3: 0.8 mol water and 0.2 mol ethanol are mixed at 298 K
H3 = G1; //(J)

//Step 4: 
//Mixture is heated to 323 K
//H = Cpm*(T1-T2)
H = G2;
Cpm = (H-H1-H2-H3)/(T1-T2);

mprintf('Mean heat capacity of solution is %f J/mol K',Cpm);

//end