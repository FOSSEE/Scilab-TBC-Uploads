//Compare the difference between change in Enthalpy and change in Enternal energy for 1 mol of ice melt  in to 1 mol of water at 273 K and one mole water change in to one mole steam at 373 K 

//Example4.4

clc;

clear;

Vbars=0.0196;  //Molar volume of ice in L mol^-1

Vbarl=0.0180;  //Molar volume of water in L mol^-1

P=1;  //Pressure in atm

delV1=Vbarl-Vbars;  //Change in molar volume when water change in to steam in L mol^-1)

E1=P*100*delV1;  //Differerce between change in Enthalpy and change in Enternal energy when ice melt in to water in J mol^-1 delH-delU 

printf("(a)Difference between change in Enthalpy and change in Enternal energy for 1 mol of ice melt  in to 1 mol of water at 273 K = %.2f J mol^-1",E1);

Vbarg=30.61;  //Molar volume of steam in L mol^-1

delV2=Vbarg-Vbarl;  //Change in molar volume when water change in to steam in L mol^-1)

E2=P*101.33*delV2;  //Differerce between change in Enthalpy and change in Enternal energy when water change in to steam delH-delU in J mol^-1

printf("\n (b)Difference between change in Enthalpy and change in Enternal energy for one mole water change in to one mole steam at 373 K  = %.0f J mol^-1",E2);
