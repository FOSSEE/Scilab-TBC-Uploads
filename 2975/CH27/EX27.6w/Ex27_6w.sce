//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 27_6w

clc;clear;
//Given Data

p1=150*10^3;   //Value of initial pressure (Unit: Pascal)
v1=1600*10^-6;   //Value of the volume before being compressed (Unit: m^3)
v2=400*10^-6;   //Value of the volume after being compressed (Unit: m^3)
gamma1=1.5;     //Value of ratio Cp/Cv i.e gamma (Unit: unitless)

//Calculation

p2=p1*(v1/v2)^gamma1;   //Calculation of new pressure of the gas (Unit: Pascal) 
work_done=(p1*v1-p2*v2)/(gamma1-1); //Calculation of the work done by the gas (Unit:Joule)

disp(p2,"The final pressure of the sample gas in adiabatic process is (Unit: Pascal)");
disp(work_done,"Work done by the gas in an adiabatic process is (Unit: Joule)");
