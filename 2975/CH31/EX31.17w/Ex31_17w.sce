//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 31_17w

clc;clear;
//Given Data

area=100*10^-4;                 //Area of the cross section (Unit:m^2)
epsilon=8.85*10^-12;            //Value of electric constant (Unit: C^2/N-m^2)
sepration=1*10^-3;              //Sepration between the parallel plate (Unit:m)
charge=0.12*10^-6;              //Charge of the capacitor (Unit:C)
voltage=120;                    //Battery voltage (Unit:V)

//Calculation

capacitance=charge/voltage;         //Calculation of the capacitance (Unit: C)
k=capacitance*sepration/(epsilon*area);  //Calculation of the dielectric constant (Unit:unitless)

disp(k,"The dielectric constant of the material filling the gap is (Unit:unitless)");
