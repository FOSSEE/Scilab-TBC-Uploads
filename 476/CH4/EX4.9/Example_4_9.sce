//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 9


clear;
clc;


//Given:
m1 = 35; //mass of steel in kg
m2 = 150; //mass of oil in kg
T1 = 725; //temperature of steel(K)
T2 = 275; //temperature of oil(K)
c1 = 0.88; //specific heat of steel (kJ/kg K)
c2 = 2.5; //specific heat of oil(kJ/kg K)


//To calculate the total entropy change
//Let T be the final temperature
T = (((m1*c1*T1)+(m2*c2*T2))/((m1*c1)+(m2*c2)));
//S1 be the in entropy for steel
S1 = (m1*c1*log(T/T1)); //[kJ/K]
//S2 be the change in entropy for oil
S2 = (m2*c2*log(T/T2)); //[kJ/K]
//S be the total entropy change
S = S1+S2;
mprintf('The total entropy change is %f kJ/K',S);

//end