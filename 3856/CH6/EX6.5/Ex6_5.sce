//Calculate the slope of the S-L (solid -liquid )Curve

//Example 6.5

clc;

clear;

Tf=273.15;  //Phase transition temperature (two phase can coexist in equilibrium)in K

delfusHbar=6.01*1000*9.87*10^-3;  //Change in Enthalpy in L atm mol^-1 (1 J=9.87*10^-3 L atm)

Vbarl=0.0180;  //Molar volume of liquid water in L mol^-1

Vbars=0.0196;  //Molar volume of ice in L mol^-1

delfusVbar=(Vbarl-Vbars);  //Change in molar volume in L mol^-1

F=(delfusHbar)/(Tf*delfusVbar);  //Slope of the S-L curve in atm K^-1; F=delP/delT

printf("Slope of the S-L Curve = %.0f atm K^-1",F);
