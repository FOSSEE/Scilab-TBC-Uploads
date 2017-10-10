clc
clear
//INPUT DATA
cpv=2.805;//specific pressure in kJ/kg K
cp1=4.606;//specific pressure in kJ/kg K
p1=10.01;//pressure in MPa
p2=1.2;//pressure in MPa
hf1=298.9;//enthalpy in kJ/kg
hf2=44.7;//enthalpy in kJ/kg
hg1=1466;//enthalpy in kJ/kg
hg2=1406;//enthalpy in kJ/kg
sf1=1.124;//entropy in kJ/kgK
sf2=0.188;//entropy in kJ/kgK
sg1=5.039;//entropy in kJ/kgK
sg2=5.785;//entropy in kJ/kgK
vf1=0.128;//volume in m^3/kg
vf2=0.963;//volume in m^3/kg
t1=253;//temperature in K
t11=243.42;//temperature in K
t21=298;//temperature in K
t2=404.78;//temperature in K
t3=293;//temperature in K

//CALCULATIONS
s1=sg2+cpv*log(t1/t11);//entropy in kJ/kg K
h1=hg2+cpv*(t1-t11);//enthalpy in kJ/kg
h2=hg1+cpv*(t2-t21);//enthalpy in kJ/kg
h3=hf1+cp1*(t21-t3);//enthalpy in kJ/kg
cop=((h1-h3)/(h2-h1));//COP of the system
P=1.5*210/(cop*60);//Power of the motor in kW

//OUTPUT
printf('(a)COP is %3.2f \n (b)Power of the motor is %3.3f kW',cop,P)







