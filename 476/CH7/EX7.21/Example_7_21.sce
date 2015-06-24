//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 21


clear;
clc;


//Given:
R = 8.314; //ideal gas constant
n1 = 3; //moles of hydrogen
n2 = 1; //moles of nitrogen
T = 298; //temperature in K
P1 = 1; //pressure of hydrogen in bar
P2 = 3; //pressure of nitrogen in bar

//To calculate the free energy of mixing
V1 = (n1*R*T)/(P1*10^5); //volume occupied by hydrogen
V2 = (n2*R*T)/(P2*10^5); //volume occupied by nitrogen
V = V1+V2; //total volume occupied
P = ((n1+n2)*R*T)/(V*10^5); //final pressure attained by mixture (bar)

//It is assumed that process is taking in two steps
//Step 1: Individual gases are separately brought to final pressure at constant temperature
//Step 2: The gases are mixed at constant temperature and pressure

//For step 1
G1 = R*T*(n1*log(P/P1) + n2*log(P/P2));

//For step 2, using eq. 7.121 (Page no. 292)
x1 = n1/(n1+n2);
x2 = n2/(n1+n2);
G2 = (n1+n2)*R*T*(x1*log (x1) + x2*log (x2));

G = G1+G2; //free energy in J
mprintf('The free energy of mixing when partition is removed is %f kJ',G/1000);

//end