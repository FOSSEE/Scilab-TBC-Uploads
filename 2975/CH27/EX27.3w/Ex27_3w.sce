//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 27_3w

clc;clear;
//Given Data

gamma1=1.4;     //Value of ratio Cp/Cv i.e gamma (Unit: unitless)
change_q=140;   //Heat supplied to the gas (Unit:Joule)

//Calculation

change_u=change_q/gamma1;    //Calculating change in internal energy (Unit:Joule)
change_w=change_q-change_u;     //Calculating work done by gas (Unit :Joule)

disp(change_u,"The change in internal energy is (Unit: Joule)");
disp(change_w,"Work done by the gas is (Unit: Joule)");
