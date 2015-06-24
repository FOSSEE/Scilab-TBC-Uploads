//example 2
//average volume and density
clear
clc
Vliq=0.2 //volume of liquid in m^3
dliq=997 //density of liquid in kg/m^3
Vstone=0.12 //volume of stone in m^3
Vsand=0.15 //volume of sand in m^3
Vair=0.53 //vo;ume of air in m^3
mliq=Vliq*dliq //mass of liquid in kg
dstone=2750 //density of stone in kg/m^3
dsand=1500 //density of sand in kg/m^3
mstone=Vstone*dstone //volume of stone in m^3
msand=Vsand*dsand //volume of sand in m^3
Vtot=1 //total volume in m^3
dair=1.1 //density of air in kg/m^3
mair=Vair*dair //mass of air
mtot=mair+msand+mliq+mstone //total mass in kg
v=Vtot/mtot //specific volume in  m^3/kg
d=1/v //overall density in kg/m^3
printf("\n hence,average specific volume is v=%.6f  m^3/kg. \n",v )
printf("\n and overall density is d=%.0f kg/m^3. \n",d)