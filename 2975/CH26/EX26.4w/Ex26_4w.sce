//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 26_4w

clc;clear;
//Given Data

mole=1;     //Number of moles of helium gas (Unit:mole)
area=8.5*10^-4;     //Area of the piston (Unit : m^2)
temp_rise=2;        //Temperature rise (Unit : degree centigrade)
atm_press=100*10^3;     //Atmospheric pressure (Unit : Pascal)
r=8.3;                  //Gas constant (Unit: J/mol-K)
change_q=42;            //Heat given to the gas (Unit: Joules)

//Calculation

change_u=1.5*mole*r*temp_rise;  //Calculation Change in internal energy (Unit: Joules)
change_w=change_q-change_u;     //Calculation Change in work done (Unit: Joules)
x=change_w/(atm_press*area);    //Calculation Distance moved by the piston (Unit: m)

disp(x,"The distance moved by the piston (Unit:m)");
