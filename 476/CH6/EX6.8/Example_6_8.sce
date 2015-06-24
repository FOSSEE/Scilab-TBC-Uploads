//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 8


clear;
clc;


//Given:
//Equation of state: P(V-B) = RT + (A*P^2)/T
Cp = 33.6; //mean specific heat at atmosheric pressure (J/mol K)
A = 1*10^-3; //m^3 K/(bar)mol
B = 8.0*10^-5; //m^3/mol
R = 8.314*10^-5; //ideal gas constant (m^3 (bar)/mol K)

//To calculate entropy change and mean heat capacity

//(a). The entropy change when the state of gas is changed from state 1 (4 bar, 300 K) to state 2 (12 bar, 400 K)
//The proposed changed is assumed to take place in 3 steps in series as illustrated in Fig. 6.4 (Page no. 206)
//Step 1: Process AC, isothermal at 300 K
//Step 2: Process CD, isobaric at 1 bar
//Step 3: Process DB, isothermal at 400 K
//(del_V/del_T)p = R/P - AP/T^2

//For step 1:
Po = 4; //pressure at A (bar)
P1 = 1; //pressure at C (bar)
T = 300; //temperature (K)
//del_S1 = intg[(del_V/del_T)pdP]
del_S1 = (R*log(Po/P1) - (A/T^2)*(Po^2-P1^2)/2)*10^5; //(J/mol K)

//For step 2:
T1 = 300; //temperature at C (K)
T2 = 400; //temperature at D (K)
del_S2 = Cp*log(T2/T1); //(J/mol K)

//For step 3:
P2 = 1; //pressure at D (bar)
P3 = 12; //pressure at B (bar)
T = 400; //temperature (K)
del_S3 = (R*log(P2/P3) - (A/T^2)*(P2^2-P3^2)/2)*10^5; //(J/mol K)
S = del_S1+del_S2+del_S3; //total entropy change
mprintf('(a). Total entropy change is %f J/mol K',S);

//(b). The mean heat capacity at 12 bar
//If the change is brouhgt along ACo and CoB
//For ACo
P1 = 4; //pressure at A (bar)
P2 = 12; //pressure at Co (bar)
T = 300; //temperature (K)
del_S1 = R*log(P1/P2) - (A/T^2)*(P1^2-P2^2)/2;

//For CoB
T2 = 400; //temperature at B (K)
T1 = 300; //temperature at Co (K)
del_S2 = S-del_S1;
Cpm = del_S2/(log(T2/T1));
mprintf('\n (b). The mean heat capacity at 12 bar is %f J/mol K',Cpm);

//end