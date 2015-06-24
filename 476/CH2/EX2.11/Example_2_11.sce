//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 11


clear;
clc;


//Given:
//At inlet:
T1 = 293; //Temperature(K)
P1 = 300+136.8; //Pressure(kPa)

//At exit:
T2 = 453; //Temperature(K)
P2 = 136.8; //Pressure(kPa)
Cp = 29.4; //specific heat capacity at constant pressure in kJ/kmol
m = 1000; //mass of hydrogen in kg
M = 2.02; //molecular mass of hydrogen

//To determine heat transfer rates
//Neglecting the kinetic nd potential energy changes
//Assuming the process to be occuring through a number of steps

//Step 1 be isothermal and step 2 be isobaric
H1 = 0; //change in enthalpy for step 1
H2 = (m/M)*Cp*(T2-T1)/1000; //change in enthalpy for step 2 in kJ
H = H2+H1;
Q = H; //heat transferred in coils in kJ
mprintf('Heat transferred in coils is %f kJ', Q);

//end