//Example 5.16
clear;
clc;

//Given
delE=-2880;//internal energy in kJ mol^-1
delS=182.4;//Entropy in J K^-1 mol^-1
T=298;//Temperature in K

//To determine delA
delA=delE-(T*delS*0.001);//helmoltz free energy in kJ mol^-1
mprintf('The amount of energy that can be extracted as heat = %f kJ mol^-1',delA);
//end