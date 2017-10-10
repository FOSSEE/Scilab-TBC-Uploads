//How much of energy change can be extracted as work in the metabolism of glucose to water and carbon dioxide C6H12O6(s)+6O2(g)=6CO2(g)+6H2O(l)

//Example 6.1

clc;

clear;

T=298;  //Teperature in K

delrU=-2801.3;  //Change in Enternal energy in kJ mol^-1

delrS=260.7;  //Change in Entropy in J K^-1

delrA=delrU-(T*delrS/1000);  //Change in Helmholtz Energy that can be used in amount of work done in given process in kJ mol^-1

printf("Amount of work done = %.1f kJ mol^-1",delrA);
