clc
clear
//DATA GIVEN
Db=0.75;                       //diameter of brake pulley in m
d=0.05;                        //diameter of rope in m
W=400;                         //dead load on the brake in N
S=50;                          //spring balance reading in N
Fc=4.2;                        //fuel consumption in kg/hr
N=1000;                        //rated engine speed in R.P.M.
C=43900;                       //calorific value of fuel used in kJ/kg
n=1;                           //no. of cylinders
k=0.5;                         //for 4-stroke cylinder


//Brake Power, B.P.=(W-S)(pi)(Db+d)N/(60*1000) kW
BP=(W-S)*(%pi)*(Db+d)*N/(60*1000);
sfc=Fc/BP;                               //brake specific fuel consumption in kg/kWhr
Mf=Fc/3600;
ETAtb=BP/(Mf*C);                         //Brake thermal efficiency

printf(' (i) The Brake specific fuel consumption, s.f.c (brake) is: %5.3f kg/kWh. \n',sfc);
printf(' (ii) The Brake thermal efficiency is: %5.3f or %2.1f percent. \n',ETAtb,(ETAtb*100));


