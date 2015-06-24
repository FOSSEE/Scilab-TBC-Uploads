//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 1


clear;
clc;


//Given:
T1 = 700; //temperature of heat source(K)
T2 = 300; //temperature of heat sink(K)

//To calculate the maximum efficiency
eff=((T1-T2)/T1); //efficiency of a heat engine
mprintf('Maximum efficiency of heat engine is %f',eff);


//end