clc
clear
//DATA GIVEN
n=6;                          //no. of cylinders
Pdisp=700;                    //piston disp per cylinder in cm^3
P=78;                         //power developed in kW
N=3200;                       //engine speed in R.P.M.
Mf=27;                        //mass of fuel used in kg/hr
C=44000;                      //calorific value of fuel used in kJ/kg
afr=12;                       //air fuel ratio
Pa=0.9;                       //intake air pressure in bar
Ta=32+273;                    //intake air tempertaure in K
R=0.287;                      //gas constant for air in kJ/kgK
k=0.5;                        //for 4-stroke cylinder

Ma=afr*Mf;                              //mass of air
//by eq. pa*Va=Ma*R*Ta
Va=Ma*R*Ta/Pa/100;                      //volume of intake air in m^3/hr
Vswept=(Pdisp/10^6)*n*(N/2)*60;         //volume swept in m^3/hr
ETAvol=Va/Vswept;                       //volumetric efficiency

//Brake thermal efficiency , ETAbt=brake work/heat supplied by the fuel
ETAbt=P/(Mf*C/3600);
//Brake Power, BP = (2*pi)N*Tb/(60*1000) kW
Tb=P*60/(2*%pi*N);                      //brake torque in kNm

printf('  (i) The Volumetric efficiency is: %5.3f or %5.1f percent. \n',ETAvol,(ETAvol*100));
printf('  (ii) The Brake thermal efficiency is: %5.4f or %5.2f percent. \n',ETAbt,(ETAbt*100));
printf(' (iii) The Brake Torque is: %5.4f kNm. \n',Tb);
