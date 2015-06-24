clc 
clear
//Input data
dk=800;//Density of kerosene in kg/m^3
g=9.81;//gravity in m/sec^2
Zk=0.051;//Kerosene vapour on Hg coloumn in m
d=13600;//Density of Hg in kg/m^3
Zh=0.1;//Hg level in m
Z=0.755;//Atmospheric pressure in m of Hg

//Calculations
Pk=dk*g*Zk;//Pressure of kerosene in N/m^2
Pa=d*g*Z;//Atmospheric pressure in N/m^2
Ph=d*g*Zh;//Pressure due to Hg in N/m^2
Pab=(Pa+Ph-Pk)/1000;//Absolute pressure in kPa

//Output 
printf('Absolute pressure of vapour Pab = %3.5f kPa ',Pab)
