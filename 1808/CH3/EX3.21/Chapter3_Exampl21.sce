clc
clear
//INPUT DATA
l=30;//Stroke in cm
d=17;//Bore in cm
vc=440*10^6;//Clearance volume in m^3
r=0.05;//cutoff ratio
g=1.4;//constant

//CALCULATIONS
vs=((3.14*(d^2)*l)*10^6)/4;//swept volume in m^3
v1=vs+vc;//Total volume in m^3
v3=vc+(r*(v1-vc));//volume at point of cutoff
ro=v3/vc;//cutoff ratio
Rc=(vs+vc)/vc;//compression ratio
nd=(1-(((1/(Rc^(g-1))))*(((ro^g)-1)/((ro-1)*g))))*100;//Air standard efficiency in precentage

//OUTPUT
printf('Air standard efficiency is %3.2f precentage',nd)
