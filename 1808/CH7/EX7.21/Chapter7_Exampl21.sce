clc
clear
//INPUT DATA
t1=35;//dry bulb temperature in Degree c
t4=25;//dry bulb temperature in Degree c
V1=40;//Moist air circulation in m^3/min
x1=0.8;//realtive humidity in percentage
x4=0.6;//realtive humidity in percentage
p=760;//pressure in mm of Hg
Ra=287.3;//gas constant
cp=1.005;//specific pressure
ps1=42.157;//Saturation pressure in mm Hg
ps4=23.74;//Saturation pressure in mm Hg
t3=16.6;//dry bulb temperature in Degree c

//CALCULATIONS
pv1=x1*ps1;//Saturation pressure in mm Hg
v1=Ra*(273+t1)/((p-pv1)*133.5);//volume
ma=V1/v1;//Amount of air added in kg d.a./min
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
h1=cp*t1+w1*(2500+(1.88*t1));//Enthalpy of air per kg of dry air in kJ/kg d.a.
pv4=x4*ps4;//Saturation pressure in mm Hg
x3=(pv4/pv4)*100;//realtive humidity in percentage
w4=0.622*(pv4/(p-pv4));//Specific humidity in kg w.v./kg d.a
h4=cp*t4+w4*(2500+1.88*t4);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h3=cp*t3+w4*(2500+(1.88*t3));//Enthalpy of air per kg of dry air in kJ/kg d.a.
Qc=ma*(h1-h3)/210;//Capacity of cooling coil in TR
Qh=ma*(h4-h3)/60;//Capacity of heating coil in kW
mw=ma*(w1-w4);//Quantity of water removed in kg w.v./min

//OUTPUT
printf('(a)Capacity of cooling coil is %3.2f kJ/min \n (b)Capacity of heating coil is %3.1f kW \n (c)Quantity of water removed is %3.3f kg w.v./min',Qc,Qh,mw)


