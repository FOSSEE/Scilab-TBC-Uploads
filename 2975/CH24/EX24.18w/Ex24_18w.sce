//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 24_18w

clc;clear;
//Given Data

temperature=300;    //Temperature of the water vapour (Unit: Kelvin)
volume=1;       //Volume of the water vapour(Unit : m^3)
molecular_weight_water=18;  //Molecular weight of the water (Unit: g/mol)
r=8.3;      //Gas constant (Unit: J/mol-K)
relative_humidity=50/100;      //Relative humidity of the air (Unit: percentage)
pressure=3.6*10^3;      //Pressure of the water vapour (Unit: Pascal)

//Formula: PV=nRT

//Calculation

mass_of_vapour=molecular_weight_water*pressure*volume/(r*temperature);      //Calculation of mass of vapour (Unit: gram)

amount_vapour=relative_humidity*mass_of_vapour;     //Calculation of vapour after considering relative humidity (Unit : gram)

disp(amount_vapour,"As the relative humidity is 50% , the amount of vapour present in 1 m^3 is (Unit : gram)");
