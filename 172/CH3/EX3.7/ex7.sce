//example 7
//determining the pressure of water
clear
clc
vg=0.12736 //specific volume in m^3/kg for water at 200C
v=0.4 //specific volume in m^3/kg
P1=500 //in kPa
v1=0.42492 //specific volume at P1 in m^3/kg
P2=600 //in kPa
v2=0.35202 //specific volume at P2 in m^3/kg
P=P1+(P2-P1)*(v-v1)/(v2-v1) //calculating pressure by interplotation
disp('hence,the pressure of water is 534.2 kPa')