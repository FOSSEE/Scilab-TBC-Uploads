clc
clear
//INPUT DATA
t=35;//dry bulb temperature in Degree c
td=15;//dew point temperature in Degree c
p=760;//pressure in mm of Hg
pv1=0.017051*10^5;//saturation pressure
ps1=0.05628 *10^5;//saturation pressure
cp=1.005;//specific pressure
cpv=1.88;//specific volume
hfg=2500;//Specific enthalpy in kJ/kgw.v.

//CALCULATIONS
pv=pv1*133.5;//vapour pressure in mm of Hg
ps=ps1*133.5;//pressure in mm of Hg
x=(pv/ps)*100;//realtive humidity in percentage
ws=(0.622*(12.77/(760-12.77)));//Specific humidity in kg w.v./kg d.a
h=(cp*t)+ws*(hfg+(cpv*t));//Enthalpy of air per kg of dry air in kJ/kg d.a

//OUTPUT
printf('(a)Relative humidity is %3.2f percentage \n (b)Specific humidity %3.4f kg w.v./kg d.a \n (c)Enthalpy of air per kg of dry air is %3.2f kJ/kg d.a ',x,ws,h)


