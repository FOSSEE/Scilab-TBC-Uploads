//Calculate the value of change in Internal energy and change in Enthalpy for the combution of Benzoic acid 

//Example 4.3

clc;

clear;

C=5267.8;  //Effective heat capcity of bomb calorimeter plus water im J K^-1

T1=293.32;  //Initial temperature in K

T2=295.37;  //Final temperature in K

delT=T2-T1;  //Change in teperature in K

M=122.12;  //Molar mass of Benzoic acid in g mol^-1

m=0.4089;  //Mass of sample of Benzoic acid in g

delU=-(C*delT*M)/(m*1000);  //Change in Enternal enegy in kJ mol^-1

printf("Change in Enternal energy = %.0f kJ mol^-1",delU);(The answer vary due to round off error)

R=8.314;  //Gas constant in J K^-1 mol^-1

T=T1; //Temperature in K

n1=7.5;  //Number of moles of gas for reactants

n2=7;  //Number of mole of gas for product

deln=n2-n1;  //Change of moles gas for reaction

delH=delU+((R*T*deln)/1000); //Change in Enthalpy in kJ mol^-1

printf("\nChange in Enthalpy = %.0f kJ mol^-1",delH); 
