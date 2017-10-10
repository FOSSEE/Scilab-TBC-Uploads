//Calculate the change in Enternal energy and change in Enthalpy for heating of Xenon 

//Example4.5

clc;

clear;

T1=300;  //Initial temperature in K

T2=400;  //Final temperature in K

m=55.40;  //Mass of Xenon in g

M=131.29;  //Molecular mass of Xenon

n=m/M;  //Number of mole of Xenon in mol

R=8.314;  //Gas constant in J K^-1 mol^-1

Cbarv=(3/2)*R;  //Molar constant volume in J K^-1 mol^-1

delT=T2-T1;  //Thange in temperature in K

delU=n*delT*Cbarv;  //Change in Enternal energy in J

printf("Change in Enternal energy = %.0f J",delU);

Cbarp=(5/2)*R;  //Molar constant pressure in J K^-1 mlo^-1

delH=n*Cbarp*delT;  //Change in Enthalpy in J

printf("\nChange in Enthalpy = %.0f J",delH);
