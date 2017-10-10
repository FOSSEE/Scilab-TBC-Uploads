//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 26_1w

clc;clear;
//Given Data

a_to_b=50;  //Absorbption of heat during the part ab (Unit: Joules)
b_to_c=40;  //Work done in on the gas during part bc (Unit: Joules)
c_to_a=-70; //Rejection of heat during the part ca (Unit: Joules)
internal_energy_a=1500; // Internal energy at a (Unit: Joules)

//calculation
//Formula: change in Q=change in U + change in W
internal_energy_b=internal_energy_a+a_to_b;     //Calculation of internal energy at b (Unit: Joules)

internal_energy_c=internal_energy_b+b_to_c;     //Calculation of internal energy at c (Unit: Joules)

change_energy_c2a=internal_energy_a-internal_energy_c;      //Calculation of change in internal energy (Unit: Joules)
work_done_ca=c_to_a-change_energy_c2a;      //Calculating the work done during the part ca (Unit: Joules)

disp(internal_energy_b,"The internal energy at b (Unit : Joules)");
disp(internal_energy_c,"The internal energy at c (Unit : Joules)");
disp(work_done_ca,"The work done by the gas during the part ca (Unit : Joules)");

