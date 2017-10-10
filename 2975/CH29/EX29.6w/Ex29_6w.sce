//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 29_6w

clc;clear;
//Given Data

mass=5*10^-3;           //Mass of the particle (Unit: kg)
charge=1*10^-7;         //Charge of the particle (Unit: C)
dis=10*10^-2;           //Distance between particle (Unit: m)
k=9*10^9;               //Value of the coulomb constant (Unit: N m^2/C^2)
gravity=9.8;            //Value of gravity (Unit: m/s^2)

//calculation

force=charge^2*k/dis^2;                 //Calculation of the force (Unit: Newton)
coefficient=force/(mass*gravity);       //Calculation of the coefficient of friction (Unit:unitless)

disp(coefficient,"The value of the coefficient of friction between each particle and the table is (Unit: unitless)");
