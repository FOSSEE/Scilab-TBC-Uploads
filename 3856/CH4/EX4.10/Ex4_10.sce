//Calculate the standard Enthalpy  for the reaction three Oxygen molecule givs two Ozone molecule

//Example 4.10

clc;

clear;

delrH298deg=285.4;  //standard enthalpy at 298 k in kJ mol^-1

Cp1=29.4;  //molar heat capacity for O2 at constant pressur in J K^-1

Cp2=38.2;  //molar heat capacity for O3 at constant pressur in J K^-1

delCp=2*Cp2-3*Cp1;  //change in molar heat capacity for reaction in J K^-1

T2=380;  //final temperature in K

T1=298;  //initial temperature in K

delT=T2-T1;  //change in temperature in K
 
delrH380deg=((delCp*delT)/1000)+delrH298deg;  //standard Enthalpy for the reaction at 380 K in kJ mol^-1

printf("Standard Enthalpy = %.1f kJ mol^-1",delrH380deg);
