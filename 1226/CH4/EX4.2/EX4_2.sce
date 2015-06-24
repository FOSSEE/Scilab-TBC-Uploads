clc;funcprot(0);//EXAMPLE 4.2
// Initialisation of Variables
r=8;..........................//Compression Ratio
ga=1.4;.......................//Degree of freedom for the gas
Cvinc=1.1;....................//Increase of specific heat at constant volume in percentage
//Calculations
eta=1-1/(r^(ga-1));...........//efficiency of otto cycle
deta=(1-eta)*(ga-1)*log(r)*(Cvinc/100);............//Change in efficiency
etach=-deta/eta;............................//Percentage change in efficiency of change in efficiency
disp(etach*100,"The percentage change in the efficiency of otto cycle (in %):")
