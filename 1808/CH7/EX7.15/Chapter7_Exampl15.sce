clc
clear
//INPUT DATA
V1=200;//volume in m^3/min
t1=30;//dry bulb temperature in Degree c
x1=0.8;//realtive humidity in percentage
t3=14;//Surface temperature in Degree C
x=0.1;//Coil bypass factor
ps1=31.81;//Saturation temperature in mm Hg
pv3=11.97;//Saturation temperature in mm Hg
cp=1.005;//specific pressure
R1=287.3;//gas constant
p=760;//pressure in mm of Hg

//CALCULATIONS
t2=x*(t1-t3)+t3;//Temperature of air leaving coil in Degree C
pv1=x1*ps1;//Saturation temperature in mm Hg
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
w3=0.622*(pv3/(p-pv3));//Specific humidity in kg w.v./kg d.a
h1=cp*t1+w1*(2500+1.88*t1);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h3=cp*t3+w3*(2500+1.88*t3);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h2=(x*(h1-h3))+h3;//Enthalpy of air per kg of dry air in kJ/kg d.a.
w2=(x*(w1-w3))+w3;//Specific humidity in kg w.v./kg d.a
v1=R1*(t1+273)/((p-pv1)*133.5);//volume in m^3/kg d.a
ma=V1/v1;//mass of dry air through the coil in kg d.a./min
Rc=ma*(h1-h2)/210;//Capacity of the coil in TR
mw=ma*(w1-w2);//Amount of water vapour removed per minute in kg w.v./kg d.a.
h4=cp*t1+w2*(2500+1.88*t1);//Enthalpy of air per kg of dry air in kJ/kg d.a.
SHF=(h4-h2)/(h1-h2);//Sensible heat factor

//OUTPUT
printf('(i)The temperature of air leaving the cooling coil is %3.1f Degree C \n (b)Capacity of the cooling coil is %3.2f TR \n (c)Amount of water removed per minute is %3.3f kg w.v./kg d.a. \n (d)Sensible heat factor is %3.4f',t2,Rc,mw,SHF)
