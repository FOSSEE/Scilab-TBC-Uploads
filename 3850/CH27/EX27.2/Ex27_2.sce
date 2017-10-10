
//Find the Amount of Heat required to raise the temperature to 400 Kelvin

//Example 27.2

clc;

clear;

V=0.2;//Volume of tank in m^3

p=1*10^5;//Pressure of Helium Gas in N/M^2

T1=300;//Initial Temperature of Helium Gas in Kelvin

T2=400;//Final Temperature of Helium Gas in Kelvin

R=8.31;//Universal Gas Constant in J/mol-K

n=int((p*V)/(R*T1));//Amount of moles of Helium Gas

Cv=3;//Molar Heat Capacity at Constant Volume

Q=n*Cv*(T2-T1);//Amount of Heat Required in calories

printf("The amount of Heat required=%d cal",Q);
