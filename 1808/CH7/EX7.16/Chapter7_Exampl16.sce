clc
clear
//INPUT DATA
t1=30;//dry bulb temperature in Degree c
t2=25;//Coil cooling temperature in Degree C
x1=0.6;//realtive humidity in percentage
t3=10;//Coil cooling temperature in Degree C
x=0.2;//bypass factor
Ra=287.3;//gas constant
p=760;//pressure in mm of Hg
V1=80;//volume in m^3/kg d.a
ps1=31.81;//Saturation pressure in mm Hg
cp=1.005;//specific pressure
ps2=23.74;//Saturation pressure in mm Hg
pv3=9.196;//Saturation pressure in mm Hg


//CALCULATIONS
v1=Ra*(273+t1)/((p-19.08)*133.5);//volume in m^3/kg d.a.
ma=V1/v1;//Mass of dry air entering the coil in kg d.a./min
pv1=x1*ps1;//Saturation pressure in mm Hg
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
h1=cp*t1+w1*(2500+1.88*t1);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h2=cp*t2+w1*(2500+1.88*t2);//Enthalpy of air per kg of dry air in kJ/kg d.a.
Rc1=ma*(h1-h2);//Capacity of the coil in TR
x2=(pv1/ps2)*100;//realtive humidity in percentage
t2r=x*(t1-t3)+t3;//Temperature at refrigeration in Degree c
w3=0.622*(pv3/(p-pv3));//Specific humidity in kg w.v./kg d.a
h3=cp*t3+w3*(2500+1.88*t3);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h2r=x*(h1-h3)+h3;//Enthalpy of air per kg of dry air in kJ/kg d.a.
Rc2=ma*(h1-h2r);//Capacity of the coil in TR
w2=x*(w1-w3)+w3;//Specific humidity in kg w.v./kg d.a
mw=ma*(w1-w2);//Condensate flow in kg w.v./min

//OUTPUT
printf('CASE I \n (a1)Refrigeration required is %3.2f kJ/min \n (b1)Final RH is %3.3f percentage \n CASE II \n (a2)Refrigeration required is %3.2f kJ/min \n (b2)condensate flow is %3.4f kg w.v./min ',Rc1,x2,Rc2,mw)

