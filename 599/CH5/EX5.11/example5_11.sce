
clear;
clc;
printf("\t Example 5.11\n");
//air leaves at 19 degree at fully saturated condition

T1=30;              //temperature at the inlet in degree celcius
T2=17;              //temperature at the exit in degree celcius
f=100000;           //flow rate of water in kg/hr
hi=.004;            //humidity of incoming air in kg/kg of dry air
hl=.015;            //humidity of leaving air in kg/kg of dry air
Hi=18.11;           //enthalpy of incoming air in kg/kg of dry air
Hl=57.16;            //enthalpy of leaving air in kg/kg of dry air
//w=mdry*(hl-hi) = mdry*0.011;                             -----equn 1st  
//mass of water evaporated

//making energy balance:  total heat in = total heat out
//heat in entering water + heat in entering air = heat in leaving water + heat in leaving air
//100000*1*(30-0) + mdry*Hi = (100000-w)*1*(17-0) + mdry*Hl  ----eqn 2nd

//substituting eqn 1st in 2nd we get;
a=14.4;                                   //cross sectional area of the tower in m^2
mdry=(T1*f-T2*f)/(Hl-Hi-T2*.011);        //mass of dry air
velocity=mdry/a;                          //air velocity in kg/m^2* hr
x=mdry*.011;                             //make up water needed in kg/hr
printf("\n the make up water needed is :%f kg /hr",x);
printf("\n the velocity of air is as :%f kg/hr",velocity);
//end