//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 3


clear;
clc;


//Given:
P_out = 4.5; //output power(hp)
P_in = 6.25; //input power(kW)
T1 = 1000; //source temperature(K)
T2 = 500; //sink temperature(K)

//To determine efficiency of proposed engine 
ep = ((P_out*745.7)/(P_in*1000)); //proposed efficiency
mprintf('Efficiency of proposed engine is %f',ep);

em = ((T1-T2)/T1); //maximum efficiency
mprintf('\nThe maximum efficieny is %f',em);
mprintf('\nHence the claim of the proposed engine is impossible');


//end