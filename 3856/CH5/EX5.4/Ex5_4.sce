//Calculate the Entropy change for the system ,for the surrounding and for the universe expands isothermally against a constant pressure

//Example 5.4

clc;

clear;

n=0.50;  //Number of moles of Ideal gas in mol 

R=8.314;  //Gas constant in J K^-1 mol^-1

V2=5.0;  //Final volume of the gas in L

V1=1.0;  //Initial volume of the gas in L

delSsys=(n*R)*log(V2/V1);  //Entropy change for the system in J K^-1

printf("Entropy change for the system = %.1f J K^-1",delSsys);

P=2;  //Pressure of the gas in atm

delV=V2-V1;  //Change of the volume in L

W=-P*delV*101.3;  //Work done in the irreversible gas expansion in J 

q=-W;  //Work done in the irreversible gas expansion change into heat lost by surrounding in J

qsur=-q;  //Heat lost by surrounding in J

T=293; //Temperature of the gas in K

delSsur=qsur/T;  //Entropy change for the surrounding in J K^-1

printf("\nEnropy change for the surrounding = %.1f J K^-1",delSsur);

delSuniv=delSsys+delSsur;  //Entropy change for the Universe in J K^-1

printf("\nEntropy change for the universe = %.1f J K^-1",delSuniv); 
