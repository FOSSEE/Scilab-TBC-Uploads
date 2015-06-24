
clc
clear
//Input data
V=175000//Volume in m^3
d=4//Diameter in m
U=1.5//Overall heat transfer coefficient in W/m^2.K
p2=2//Pressure in bar
p1=20//Pressure in bar
Ta=20//Ambient temperature in degree C
cp=4.35//Specific heta of water in kJ/kg.K
e=96//Efficiency in percent
ppe=25//Peaking plant efficiency in percent

//Calculations
//At 20 bar
T1=212.37//Saturation temperature in degree C
hf1=908.5//Enthalpy in kJ/kg
vf1=0.0011766//Specific volume in m^3/kg
//At 2 bar
T2=120.23//Saturation temperature in degree C
hf2=504.8//Enthalpy in kJ/kg
vf2=0.0010605//Specific volume in m^3/kg
ad=(1/2)*((1/vf1)+(1/vf2))//Average density of water in kg/m^3
tc=(d*ad*cp*1000)/(4*U*3600)//Time constant in h
ts=(log(1/(1-((1-((e/100)))/((T1-Ta)/(T1-T2))))))*tc//Storage time in h
m=(V/vf1)//Mass of water needed in kg
E=(m*(hf1-hf2))/(3600*10^3)//Total energy stored in MWh
Ed=(E*(e/100)*(ppe/100))//Energy delivered in MWh

//Output
printf('(a) the storage time is %3.3f h \n (b) the total energy stored in the accumulator is %3.1f MWh \n (c) the total energy that can be delivered by the peaking turbine is %3.2f MWh',ts,E,Ed)
