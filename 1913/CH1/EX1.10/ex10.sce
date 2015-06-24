clc
clear 
//Input data 
z=750;//Barometric pressure in mm of Hg
g=9.81;//Gravity in m/sec^2
Pa=101.325;//one atm pressure in kN/m^2
Pg=3.3;//Pressure in atm
Pf=3.2;//Pressure in m of water
d=13596;//Density of Hg in kg/m^3

//calculations
Pp=(d*g*z)/10^6;//Pressure in kPa
p1=(d*g*0.55)/1000;//Pressure in kPa
p2=Pp+(Pg*101.325);//Pressure in kPa
p3=Pp+((Pf*g*100))/1000;//Pressure in kPa
p4=4.6*100;//Pressure in kPa

//Output
printf('(a)Pressure of 55cm of Hg (Abs) = %3.2f kPa \n (b)Pressure at 3.3 atm (Gauge)= %3.3f kPa \n (c)Pressure of 3.2m of water (Gauge)= %3.2f kPa \n (d)Pressure of 4.6bar (Abs)= %3.2f kPa',p1,p2,p3,p4)
