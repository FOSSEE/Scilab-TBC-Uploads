//Calculate the  work done if the expansion is carried out Adiabatically and Reversibly

//Example 4.7

clc;

clear;

n=0.850;  //Number of moles of momnoatomic ideal gas in mol

R=0.08206;  //Gas constant in L atm K^-1

T1=300;  //Initial temperature in K

P1=15;  //Initial pressure in atm

V1=(n*R*T1)/P1;  //Initial volume in L

P2=1;  //Final pressure in atm

gama=5/3; //Constant for Adiabatic Expansion

V2=V1*(P1/P2)^(1/gama);  //Final volume in L

T2=(P2*V2)/(n*R);  //Final temperature in K

Cbarv=12.47;  //Molar consant volume heat capacity in J K^-1 mol^-1

delU=n*Cbarv*(T2-T1);  //Change in Enternal energy in J 

w=delU;  //Change in Enternal energy converted in to amount of work done in expansion is carried out Adiabatically and Reversibly in J

printf("Work done = %.1f*10^3 J",w*10^-3);

 
