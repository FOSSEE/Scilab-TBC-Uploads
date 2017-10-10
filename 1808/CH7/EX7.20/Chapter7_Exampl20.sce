clc
clear
//INPUT DATA
t1=35;//dry bulb temperature in Degree c
x1=0.8;//realtive humidity in percentage
t2=15;//Apparatus dew point in Degree c
t4=25;//dry bulb temperature in Degree c
V1=200;//Quantity of moist air in m^3/min
x=0.3;//bypass factor
ps1=42.16;//Saturation pressure in mm Hg
p=760;//pressure in mm of Hg
Ra=287.3;//gas constant
cp=1.005;//specific pressure
ps2=12.77;//Saturation pressure in mm Hg
ps4=23.74;//Saturation pressure in mm Hg

//CALCULATIONS
pv1=x1*ps1;//Saturation pressure in mm Hg
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
t3=(x*(t1-t2))+t2;//dry bulb temperature in Degree c
h1=cp*t1+w1*(2500+1.88*t1);//Enthalpy of air per kg of dry air in kJ/kg d.a.
w2=0.622*(ps2/(p-ps2));//Specific humidity in kg w.v./kg d.a
w3=x*(w1-w2)+w2;//Specific humidity in kg w.v./kg d.a
h3=cp*t3+w3*(2500+1.88*t3);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h4=cp*t4+w3*(2500+1.88*t4);//Enthalpy of air per kg of dry air in kJ/kg d.a.
v1=Ra*(273+t1)/((p-pv1)*133.5);//volume
ma=V1/v1;//Amount of air added in kg d.a./min
Qc=ma*(h1-h3)/210;//Capacity of cooling coil in TR
Qh=ma*(h4-h3)/60;//Capacity of heating coil in kW
mw=ma*(w1-w3);//Quantity of water removed in kg w.v./min
pv4=w3*p/1.01611;//Saturation pressure in mm Hg
x4=(pv4/ps4)*100;//realtive humidity in percentage

//OUTPUT
printf('(a)Capacity of cooling coil is %3.2f TR \n (b)Capacity of heating coil is %3.2f kW \n(c)Quantity of water removed is %3.4f kg w.v./min \n (d)realtive humidity is %3.2f percentage',Qc,Qh,mw,x4)
