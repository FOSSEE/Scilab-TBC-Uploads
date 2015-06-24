clear;
clc;
printf("\t\t\tProblem Number 3.21\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.21 (page no. 125) 
// Solution

m=400; //Unit:LBm/min //mass of lubricating oil
Cp=0.85; //Unit:Btu/LBm*R //Specific heat of the oil
T1=215; //Temperature when hot oil is entering //Unit:Fahrenheit
T2=125; //Temperature when hot oil is leaving //Unit:Fahrenheit
DeltaT=T2-T1; //Unit:Fahrenheit  //change in temperature
Qoil=m*Cp*DeltaT; //Heat out of oil //Btu/min
printf("Heat out of oil is %f Btu/min (Out of oil)\n",Qoil);
//Heat out of oil is the heat into the water
//Mw=Water flow rate
//M*Cpw*DeltaTw=Qoil
Cpw=1.0; //Unit:Btu/LBm*R //Specific heat of the water
T3=60; //Temperature when water is entering //Unit:Fahrenheit
T4=90; //Temperature when water is leaving //Unit:Fahrenheit
DeltaTw=T4-T3; //Unit:Fahrenheit //change in temperature
Mw=Qoil/(Cpw*DeltaTw); //The Required water flow rate  //Unit;lbm/Min
printf("The Required water flow rate is %f lbm/Min\n",abs(Mw));
