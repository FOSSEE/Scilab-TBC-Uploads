//Calculate the pressure of  gas if Nitrogen behaves as a Van der Waals and ideal gas

// Example 2.3

clc;

clear;

n=2000;  //Number of Nitrogen molecule in mol

R=0.08206;  //Gas constant in L atm K^-1 mol^-1

T=898;  //Tempreture in kelvin

V=800;   //Volume of vessel in L

b=0.0386;  //Van der walls constant in L /mol

a=1.35;  //Proportionality constant in L^2/mol^2

P1=((n*R*T)/(V-(n*b)))-((a*n^2)/(V^2)); //Pressure of gas in atm

printf("(a) Pressure of gas when Nitrogen behaves as Van Der Valls Gas = %.0f atm",P1);

P2=(n*R*T)/V; //Pressure of gas if Nitrogen behaves as an ideal gas

printf("\n(b)Pressure of gas if Nitrogen behaves as an ideal gas = %.0f atm",P2);
