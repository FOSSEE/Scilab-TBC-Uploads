clc;
clear;

printf('Example 13.6\n')

G_s=0.15; //Mass flow rate of steam
T=400; //Temperature to which steam is superheated
T_a=320;//Tremperature of air 
RH_a=20; //Percentage relative humidity of air
G_a=5;//Mass flow rate of air
L=2258e3; //latent heat of steam
Cp=2e3; //Specific heat of superheated steam
//Enthalpy of steam
H_3=4.18*(373-273)+L+Cp*(T-373);
//From Figure .13.5:
//at T=320 K and 20 percent Relative Humidity
H1=0.013;//Humidity
H_1=83e3;//Enthalpy
//By making required constructions we get
H=0.043;
printf("\n Relative humidity of stream= %.3f kg/kg",H);
H_=165e3;
printf("\n Entahlpy of stream = %d kJ/kg",H_*1e-3);
T_s=324;
printf("\n Temperature of stream = %d K",T_s);

printf("\n\n When exit temperature = 330 K");
//from chart and equation 13.28
G_case2=0.41;
printf("\n The required flow of steam = %.2f kg/s",G_case2);
printf("\n humidity of this mixture = %.3f kg/kg",0.094);
