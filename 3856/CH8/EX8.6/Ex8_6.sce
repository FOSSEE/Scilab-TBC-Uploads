//Calculate the value of Standard Molar Enthalpy of formation of Sodium ion (delfHNa)for reaction Na(s)+1/2Cl2(g)=Na^+(aq)+Cl^-(aq)

//Example 8.6

clc;

clear;

delrH=-406.9;  //Standard Enthalpy of reaction in kJ mol^-1

delfH2=-167.2;  //Standard molar Enthalpy of Chloride ion in kJ mol^-1

delfH3=0;  //Standard molar Enthalpy of Chlorine gas in kJ mol^-1

delfH4=0;  //Standard molar Enthalpy of Sodium in kJ mol^-1

delfH1=delrH+delfH3+delfH4-delfH2;  //Standard molar Enthalpy of Sodium  ion in kJ mol^-1

printf("Standard Molar Enthalpy of Sodium ion = %.1f kJ mol^-1",delfH1);
