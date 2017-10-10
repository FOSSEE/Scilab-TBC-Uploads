clc
clear
//INPUT DATA
p=760;//pressure in mm of Hg
t=30;//dry bulb temperature in Degree c
p2=0.04246*10^5;//pressure in N/m^2
cp=1.005;//specific pressure
hfg=2500;//Specific enthalpy in kJ/kgw.v.
cpv=1.88;//specific pressure

//CALCULATIONS
ps=(p2/133.5);//pressure in mm of Hg
ws=(0.62*(ps/(p-ps)));//Specific humidity in kg w.v./kg d.a
h=(cp*t)+ws*(hfg+(cpv*t));//Enthalpy of air per kg of dry air in kJ/kg d.a

//OUTPUT
printf('(a)Accorrding to steam tables The vapour pressure is %3.2f mm Hg \n (b)Specific humidity %3.4f kg w.v./kg d.a \n (c)Enthalpy of air per kg of dry air is %3.2f kJ/kg d.a ',ps,ws,h)


