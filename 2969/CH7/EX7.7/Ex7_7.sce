clc
clear
//DATA GIVEN
IP=30;                       //indicted power in kW
BP=26;                       //Brake Power in kW
N=1000;                      //engine speed in R.P.M.
F=0.35;                      //fuel per brake power hour in kg/BP/h
C=43900;                     //calorific value of fuel used in kJ/kg

Fc=F*BP;                     //fuel consumption per hour 
Mf=Fc/3600;
ETAti=IP/(Mf*C);            //Indicted thermal eficiency
ETAtb=BP/(Mf*C);            //Brake thermal efficiency
ETAm=BP/IP;                 //Mechanical efficiency

printf(' (i) The Indicted thermal eficiency is: %5.3f or %2.1f percent. \n',ETAti,(ETAti*100));
printf(' (ii) The Brake thermal efficiency is: %5.3f or %2.1f percent. \n',ETAtb,(ETAtb*100));
printf('(iii) Mechanical efficiency is: %5.3f or %2.1f percent. \n',ETAm,(ETAm*100));
