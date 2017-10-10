//Predict whether the following reaction would proceed spontaneously as written ( Cd(s)+Fe++(aq)=Cd++(aq)+Fe(s)

//Example 10.3

clc;

clear;

C1=0.15; //Concentration of Cadmium ion in M

C2=0.68;  //Concentration of Ferrus  ion in M

E1=-0.447; //Standard Electrode potential for cathode in V

E2=-0.403; //Standard Electrode potential for anode in V

Edes=E1-E2;  //Standard Electrode potential in V

v=2; //Stoichiometric coefficient 

E=Edes-(0.0257/v)*log(C1/C2);  //Standard Electrode potential from Nerst equation in V

printf("Standard Electrode potential from = %.3f V is negative the reaction is not spontaneous as written",E);
