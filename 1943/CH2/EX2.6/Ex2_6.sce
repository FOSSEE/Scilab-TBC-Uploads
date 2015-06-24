
clc
clear
//Input data
p1=150//Pressure of inlet steam in bar
T1=550//Temperature of steam in degree C
p2=20//Pressure after expansion in bar
T2=500//Reheat temperature in degree C
pc=0.075//Condenser pressure in bar
php=50//Pressure of steam in h.p turbine in bar
pip=[10,5,3]//Pressure of steam in i.p turbines in bar
plp=1.5//Pressure of steam in l.p turbine in bar
m=300*1000//Steam flow rate in kg/h

//Calculations
h1=3448.6//Enthalpy in kJ/kg
h4=3467.6//Enthalpy in kJ/kg
s1=6.5119//Entropy in kJ/kg.K
s2=s1//Entropy in kJ/kg.K
s3=s1//Entropy in kJ/kg.K
s4=7.4317//Entropy in kJ/kg.K
s5=s4//Entropy in kJ/kg.K
s6=s5//Entropy in kJ/kg.K
s7=s6//Entropy in kJ/kg.K
s8=s7//Entropy in kJ/kg.K
s9=s8//Entropy in kJ/kg.K
t2=370//Temperature in degree C
t3=245//Temperature in degree C
t5=400//Temperature in degree C
t6=300//Temperature in degree C
t7=225//Temperature in degree C
t8=160//Temperature in degree C
h2=3112//Enthalpy in kJ/kg
h3=2890//Enthalpy in kJ/kg
h5=3250//Enthalpy in kJ/kg
h6=3050//Enthalpy in kJ/kg
h7=2930//Enthalpy in kJ/kg
h8=2790//Enthalpy in kJ/kg
x9=(s9-0.5764)/7.6751//Dryness fraction
h9=168.79+x9*2406////Enthalpy in kJ/kg
h10=168.79//Enthalpy in kJ/kg
h11=h10+0.001*pip(2)*100//Enthalpy in kJ/kg
h12=467.11//Enthalpy in kJ/kg
t14=111.37//Temperature in degree C
h14=467//Enthalpy in kJ/kg
h13=h12//Enthalpy in kJ/kg
h14=h13//Enthalpy in kJ/kg
h15=h14//Enthalpy in kJ/kg
h16=561.47//Enthalpy in kJ/kg
h17=h16//Enthalpy in kJ/kg
h18=640.23//Enthalpy in kJ/kg
h19=h18+0.001*(p1-pip(2))*100//Enthalpy in kJ/kg
h20=762.8//Enthalpy in kJ/kg
h21=h20//Enthalpy in kJ/kg
h22=1154.23//Enthalpy in kJ/kg
h23=h22//Enthalpy in kJ/kg
m1=((h23-h21)/(h2-h22))//Mass in kg
m2=((h21-h19)-(m1*(h22-h20)))/(h5-h20)//Mass in kg
m3=(((1-m1-m2)*(h18-h17))-((m1+m2)*(h20-h18)))/(h6-h18+h18-h17)//Mass in kg
m4=((1-m1-m2-m3)*(h17-h15))/(h7-h16)//Mass in kg
m5=(((1-m1-m2-m3-m4)*(h14-h11))-(m4*(h16-h12)))/(h8-h12+h14-h11)//Mass in kg
WT=(h1-h2)+(1-m1)*(h2-h3)+(1-m1)*(h4-h5)+(1-m1-m2)*(h5-h6)+(1-m1-m2-m3)*(h6-h7)+(1-m1-m2-m3-m4)*(h7-h8)+(1-m1-m2-m3-m4-m5)*(h8-h9)//Workdone by turbine in kJ/kg
Wp=(0.5+14.5+0.15)//Workdone in kJ/kg
Wnet=(WT-Wp)//Net workdone in kJ/kg
Q1=(h1-h23)+(1-m1)*(h4-h3)//Heat supplied in kJ/kg
ncy=(Wnet/Q1)*100//Cycle efficiency in percent
t23=264//Temperature in degree C
sr=(3600/Wnet)//Steam rate in kJ/kWh
hr=((Q1/Wnet)*3600)//Heat rate in kJ/kWh
P=((Wnet*m)/3600)/10^3//Power output in MW

//Output
printf('(a) The cycle efficiency is %3.2f percent \n (b) The feedwater temperature is %i degree C \n (c) The steam rate is %3.2f kJ/kWh \n (d) The heat rate is %3.0f kJ/kWh \n (e) The quality of steam at turbine exhaust is %3.4f \n (f) The power output is %3.2f MW',ncy,t23,sr,hr,x9,P)
