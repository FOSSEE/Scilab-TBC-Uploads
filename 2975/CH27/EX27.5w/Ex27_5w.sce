//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 27_5w

clc;clear;
//Given Data
temp_1=300;     //Initial Temperature of the air (Unit:Kelvin)
volume_1=800;   //Initial volume of the air (Unit: cm^3)
volume_2=200;   //Final volume of the air (Unit:cm^3)
gamma1=1.4;     //Value of ratio Cp/Cv i.e gamma (Unit: unitless)

//Calculation

temp_2=temp_1*(volume_1/volume_2)^(gamma1-1);   //Calculation of the temperature (Unit:Kelvin)
rise_temp=temp_2-temp_1;    //Calculation of the rise in temperature

disp(rise_temp,"Rise in temperature when compressed in a short time (adiabatic process) is (Unit:Kelvin)");
disp("When the gas is compressed in a long time , the process isothermal so the temperature is constant hence the rise in temperature is 0");
