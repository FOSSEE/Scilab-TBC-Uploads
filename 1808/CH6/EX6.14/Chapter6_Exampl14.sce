clc
clear
//INPUT DATA
hf1=100.4;//enthalpy in kJ/kg
hf2=-54.56;//enthalpy in kJ/kg
hg1=1319.22;//enthalpy in kJ/kg
hg2=1304.99;//enthalpy in kJ/kg
sf1=0.3473;//entropy in kJ/kgK
sf2=-0.2134;//entropy in kJ/kgK
sg1=4.4852;//entropy in kJ/kgK
sg2=5.0585;//entropy in kJ/kgK
t1=20;//temperature in Degree C
t2=-15;//temperature in Degree C
mi=30;//mass of ice 
hfgi=335;//enthalpy in kJ/kg
cpw=4.1868;//specific pressure of water in kJ/kg K

//CALCULATIONS
x1=((sg1-sf2)/(sg2-sf2));//fraction
h1=hf2+x1*(hg2-hf2);//enthalpy in kJ/kg
copt=((h1-hf1)/(hg1-h1));//COP of the system
copa=copt*0.6;//actual cop
Qa=mi*10^3*(cpw*t1+hfgi)/(24*3600);//heat removed from water in kJ/s
w=Qa/copa;//Power required to drive compressor in kW

//OUTPUT
printf('power required to drive the compresor i %3.2f kW',w) 











