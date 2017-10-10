clc
clear
//INPUT DATA
t1=2;//temperature in Degree C
t2=30;//temperature in Degree C
x1=0.8;//realtive humidity in percentage
td2=10;//Dew point temperature in Degree C
ps1=5.2854;//Saturation pressure in mm Hg
pv2=9.196;//Saturation pressure in mm Hg
ps2=31.8052840;//Saturation pressure in mm Hg
p=760;//pressure in mm of Hg
cp=1.005;//specific pressure

//CALCULATIONS
pv1=x1*ps1;//saturation pressure in mm Hg
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
w2=0.622*(pv2/(p-pv2));//Specific humidity in kg w.v./kg d.a
ma1=(1/(1+w1));//Mass of dry air per unit mass of moist air in kg/d.a.
ma2=(3/(1+w2));//Mass of dry air per unit mass of moist air in kg/d.a.
ma3=ma1+ma2;//Mass of dry air per unit mass of moist air in kg/d.a.
t3=((ma1*t1)+(ma2*t2))/(ma3);//Temperature of the air after mixture in Degree C
w3=((ma1*w1)+(ma2*w2))/(ma3);//Specific humidity of air mixture in kg w.v./kg d.a.
h1=cp*t1+w1*(2500+1.88*t1);//Enthalpy of air per kg of dry air in kJ/kg d.a
h2=cp*t2+w2*(2500+1.88*t2);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h3=((ma1*h1)+(ma2*h2))/(ma3);//Enthalpy of air per kg of dry air in kJ/kg d.a.

//OUTPUT
printf('Temperature of the air after mixture is %3.4f Degree c \n (ii)Specific humidity of the air after mixing is  %3.7f kg w.v./kg d.a. \n (iii)Specific enthalpy of the air after mixing is %3.2f kJ/kg d.a.',t3,w3,h3)

