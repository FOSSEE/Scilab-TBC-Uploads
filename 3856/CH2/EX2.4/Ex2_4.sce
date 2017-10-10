//Calculate the molar volume of Methane 

//Example 2.4

clc;

clear;

B=-0.042;  //Second virial coefficient of Methane in L mol^-1

P=100;   //Pressure in atm

R=0.08206;  //Gas constant in L atm K^-1 mol^-1

T=300;  //Temperature in kelvin 

Z=1+((B*P)/(R*T));  //Compressibility Factor

Vbar=(Z*R*T)/P;//Volume of Methane per mol in L

printf("Observed Molar Volume of Methane = %.2f L mol^-1", Vbar);

V1bar=(R*T)/P; //Molar volume of Methane through Ideal Gas Equation in L

printf("\nMolar volume of Methane through Ideal Gas Equation = %.2f L mol^-1", V1bar);
