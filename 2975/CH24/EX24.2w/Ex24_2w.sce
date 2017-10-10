//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 24_2w

clc;clear;
//Given Data

volume=2000*10^-6;  //Volume of the vessel (Unit: m^3)
r=8.3;  //Gas Constant (Unit: J/mol-K)
temperature=300;    //Temperature of the vessel (Unit : Kelvin)
mole_oxygen=0.1;    //Moles of oxygen (Unit : mole)
mole_CO2=0.2;       //Moles of Carbon dioxide (Unit : mole)

//Formula: PV=nRT

//Calculation

press_oxygen=mole_oxygen*temperature*r/volume;  //Pressure of oxygem (Unit : Pascal)
press_CO2=mole_CO2*temperature*r/volume;        //Pressure of Carbon Dioxide (Unit : Pascal)
total_pressure=press_oxygen+press_CO2;          //Total pressure on the vessel  (Unit : Pascal) 

disp(total_pressure,"The total pressure in the vessel is (Unit : Pa)");
