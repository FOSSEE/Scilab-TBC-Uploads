//ques6
//calculating heat transferred in gas vapour mixture
clear
clc
//n-Nitrogen
//v-water vapour
Pn2=1995;//Pressure of nitrogen in kPa
V=0.5;//Volume in m^3
Rn2=0.2968;//Gas constant for nitrogen in kJ/kg.K
Rv=0.4615;//gas constant for vapour
T1=323.2;//Temperature in K
T2=283.2;//Temperature in K
Pv1=5;//Pressure of water vapour in kPa at state 1
Pv2=1.2276;//Pressure of water vapour in kPa at state 2
mn2=Pn2*V/(Rn2*T1);//mass of nitrogen
mv1=Pv1*V/(Rv*T1);//mass of vapour in kg
mv2=Pv2*V/(Rv*T2);//mass of vapour in kg
ml2=mv1-mv2;//mass of liquid condensed n kg
uv1=2443.1;//specific internal energy of vapour in kJ/kg at state 1
uv2=2389.2;//specific internal energy of vapour in kJ/kg at state 2
ul2=42.0;//specific internal energy of liquid water in kJ/kg
Cv=0.745;//specific heat at constant volume in kJ/kg.K
Q=mn2*Cv*(T2-T1)+mv2*uv2+ml2*ul2-mv1*uv1;
printf('Heat transferred = %.1f kJ ',Q);