//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 24_1w

clc;clear;
//Given Data

volume=8*10^-3; //Volume of vessel at 300K and 200 kPa(Unit: m^3 )
temp=300;   //Temperature of the vessel (Unit: Kelvin)
pressure_init=200*10^3;     //Inital pressure of vessel (Unit : Pa)
pressure_final=125*10^3;    //Final pressure of vessel (Unit : Pa)
r=8.3;  //Gas constant (Unit J/mol-K)

//  Formula :  PV=nRT

//  Calculation

gas_leaked=(pressure_init-pressure_final)*volume*(1/(r*temp));  //Computation of leaked gas in terms of moles (Unit : moles)

disp(gas_leaked,"The amount of the gas leaked assuming that the temperature remains constant is (Unit: moles)");
