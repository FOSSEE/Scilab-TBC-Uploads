
clear;
clc;
printf("\t Example 5.12\n");
//horizontal spray with recirculated water . air is cooled and humidified to 34 and leaves at 90percent saturation

T1=65;              //dry bulb temperature at the inlet in degree celcius
f=3.5;           //flow rate of air in m^3/s
hi=1.017;            //humidity of incoming air in kg/kg of dry air
hl=.03;            //humidity of leaving air in kg/kg of dry air
k=1.12;            //mass transfer coefficient in kg/m^3*s
y1=.017;           //molefraction at recieving end
y2=.03;            //molefraction at leaving end

//substituting eqn 1st in 2nd we get;
a=2;                                   //cross sectional area of the tower in m^2
d=1.113;                                  //density o fair in kg/m^3
m=(f*d)                                   //mass flow rate  of  air
gs=m/hi;                                 //air velocity in kg/m^2* hr
ys_bar=.032;
//for recirculation humidifier
z=log((ys_bar-y1)/(ys_bar-y2))*gs/k;          //length of the chamber required
printf("\n the length of the chamber required is :%f m",z);

//end