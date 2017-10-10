clc
clear
//INPUT DATA
m1=1;//mass flow rate in kg
m2=2;//mass flow rate in kg
t1=50;//temperature in Degree C
t2=20;//temperature in Degree C
x1=0.5;//temperature in Degree C
td2=20;//Dew point temperature in Degree C
ps1=0.12354*10^5;//Saturation pressure in N/m^2
ps2=17.52;//Saturation pressure in mm Hg
p=760;//pressure in mm of Hg
m12=0.5;//Ratio of masses

//CALCULATIONS
pv1=x1*ps1;//vapour pressure in mm Hg
pv11=pv1/133.5;//vapour pressure in mm Hg
w1=0.622*(pv11/(p-pv11));//Specific humidity in kg w.v./kg d.a
w2=0.622*(ps2/(p-ps2));//Specific humidity in kg w.v./kg d.a
w3=(w1+2*w2)/3;//Specific humidity in kg w.v./kg d.a
t3=(t1+2*t2)/3;//temperature in Degree C

//OUTPUT
printf('(i)Temperature of the mixture is %3.1f Degree C \n (ii)Specific humidity of the mixture is %3.5f kg/kg d.a.',t3,w3)




