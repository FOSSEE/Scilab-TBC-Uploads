clc
clear
//INPUT DATA
cp=0.202;//specific pressure in kcal/kg K
g=1.18;//constant
t21=303;//condenser temperature in K
t1=263;//evaporator temperature in K
t21=313;//subcooled temperature in K
p1=3.543;//pressure in Bar
p2=15.335;//pressure in Bar
hf1=188.4;//enthalpy in kJ/kg
hg1=401.6;//enthalpy in kJ/kg
hf2=249.7;//enthalpy in kJ/kg
hg2=416.6;//enthalpy in kJ/kg
sf1=0.9573;//entropy in kJ/kgK
sf2=1.167;//entropy in kJ/kgK
sg1=1.767;//entropy in kJ/kgK
sg2=1.699;//entropy in kJ/kgK
vg1=0.0653;//entropy in kJ/kgK
vg2=0.0151;//entropy in kJ/kgK
v1b=0.772;//entropy in kJ/kgK
hfg1=213.2;//enthalpy in kJ/kg
hfg2=166.9;//enthalpy in kJ/kg
vf1=0.759;//sp.volume 
vf2=0.884;//sp.colume
t22=432.68;//temperature in K

//CALCULATIONS
t2=t1*((p2/p1)^((g-1)/g));//temperature in K
v2=vg2*(t2/t21);//sp.volume in m^3/kg
wc=(g/(g-1))*p1*10^2*vg1*(((p2/p1)^((g-1)/g))-1);//work done in compressor
h2=hg1+cp*0.202*(t2-t21);//enthalpy in kJ/kg
Re=hg1-hf2;//Refrigeration effect
wc1=h2-hg1;//compressor work in kJ/kg
cop=Re/wc;//COP of the system
m=(12*210)/(60*Re);//mass of refrigerant in kg/s
Pc=m*wc;//compressor power
Pm=Pc/0.75;//Power of the motor in kW

//OUTPUT
printf('(a)COP of the system is %3.2f \n (b)Mass flow rate oof refrigerant %3.4f kg/s \n (c)Power of the motor is %3.2f kW',cop,m,Pm)





