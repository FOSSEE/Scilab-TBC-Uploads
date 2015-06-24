//example 9
//A Combined Gas–Steam Power Cycle
clear
clc
h4=880.36 //specific enthalpy for state 4 in kJ/kg
T4=853 //temperature for state 4 in K
qin=790.58 //in kJ/kg
wnet=210.41 //in kJ/kg
h5=451.80 //specific enthalpy for state 5 in kJ/kg
h2=144.78 //specific enthalpy for state 2 in kJ/kg
h3=3411.4 //specific enthalpy for state 3 in kJ/kg
wnetgas=210.41 //in kJ/kg
wnetsteam=1331.4 //in kJ/kg
y=(h4-h5)/(h3-h2) //ratio of mass folw rates of the steam and combustion gases 
wnet=wnetgas+y*wnetsteam //net work output of the cycle in kJ/kg
n=wnet/qin //thermal efficiency of the combined cycle 
printf("\n Hence, the ratio of mass folw rates of the steam and combustion gases  is = %.3f . \n",y);
printf("\n Hence, the thermal efficiency of the cobined cycle is = %.3f . \n",n);