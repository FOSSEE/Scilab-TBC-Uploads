//Calculate the Maximum Electrical work that can be obtained from CH4(g)+2O2(g)=CO2(g)+2H2O(l)

//Example 6.3

clc;

clear;

delrH=-890.3;  //change in Enthalp in kJ mol^-1

delrS=-242.8;  //Change in Entropy in J K^-1

T=25+273;  //Temperature in K

delrG=delrH-(T*delrS/1000);  //Change in Gibbs energy in kJ mol^-1

Welmax=delrG;  //Change in Gibbs Energy converted into maximum electrical work in kJ mol^-1 thus the maximum electrical work the system can do on the surroundings is equal to positive

printf("Maximum work done = %.0f kJ mol^-1",Welmax);
