funcprot(0);clc; //Example 9.6 

//Initializing the variables
Qa = 2;
Na = 1400;
rhoA = 0.92;
rhoS = 1.3;
DaByDs = 1;
dPa = 200;

//Calculations
Ns = Na*(rhoA/rhoS)*(DaByDs);
Qs = Qa*(Ns/Na);
dPs = dPa *(rhoS/rhoA)*(Ns/Na)^2*(1/DaByDs)^2;

 disp(dPs,"Pressure rise(N/m2 ) :",Qs, "Flow rate (m3/s):",Ns,"Fan test speed (rev/s):");