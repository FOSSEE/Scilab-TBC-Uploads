//example 13
//dropping of hot iron block in water
clear
clc
miron=5 //mass of iron block in kg
mwater=100 //mass of water in kg
ciron=0.45 //specific heat capacity of iron in kJ/kg-C
cwater=4.18 //specific heat capacity of water in kJ/kg-C
Tiiron=350 //initial temperature of iron in Celsius
Tiwater=30 //initial temperature of water in Celsius
Tf=(miron*ciron*Tiiron+mwater*cwater*Tiwater)/(miron*ciron+mwater*cwater) //final equilbrium temperature in Celsius
T0=293 //temperature of surroundings in K
X1iron=miron*ciron*((Tiiron+273)-T0-T0*log((Tiiron+273)/T0)) //initial exergy of iron
X1water=mwater*cwater*((Tiwater+273)-T0-T0*log((Tiwater+273)/T0)) //initial exergy of water
X1total=X1iron+X1water //total initial exergy
X2iron=miron*ciron*((Tf+273)-T0-T0*log((Tf+273)/T0)) //finall exergy of iron
X2water=mwater*cwater*((Tf+273)-T0-T0*log((Tf+273)/T0)) //final exergy of water
X2total=X2iron+X2water //total exergy in kJ
Xdestroyed=X1total-X2total //exergy destroyed in kJ
printf("\n Hence, the final equilbrium temperature is = %.1f celsius. \n",Tf);
printf("\n The exergy of the combined system at the initial state is = %.0f kJ. \n",X1total);
printf("\n The exergy of the combined system at the final state is = %.1f kJ. \n",X2total);
printf("\n The wasted work potential during this process is = %.1f kJ. \n",Xdestroyed);