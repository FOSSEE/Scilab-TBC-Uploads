
clc
clear
//Input data
p1=90//Initial pressure of steam in bar
T1=500//Initial temperature of steam in degree C
O=(500*1000)//Output in kW
T2=40//Condensation temperature in degree C
nhp=0.92//Efficiency of h.p turbine
nlp=0.9//Efficiency of l.p turbine
np=0.75//Isentropic efficiency of the pump 
TTD=-1.6//Temperature in degree C

//Calculations
p2=(0.2*p1)//Optimum reheat pressure in bar
h1=3386.1//Enthalpy in kJ/kg
s1=6.6576//Entropy in kJ/kg.K
s2s=s1//Entropy in kJ/kg.K
h2s=2915//Enthalpy in kJ/kg
h3=3469.8//Enthalpy in kJ/kg
s3=7.4825//Entropy in kJ/kg.K
x4s=(s3-0.5725)/7.6845//Dryness fraction
h4s=(167.57+x4s*2406.7)//Enthalpy in kJ/kg
h5=167.57//Enthalpy in kJ/kg
h7=883.42//Enthalpy in kJ/kg
Wps=(0.001008*p1*10)//Workdone by the pump in kJ/kg
h6s=176.64//Enthalpy in kJ/kg
dh1h2=(nhp*(h1-h2s))//Difference in enthalpy (h1-h2) in kJ/kg
h2=h1-dh1h2//Enthalpy in kJ/kg
dh3h4=(nlp*(h3-h4s))//Difference in enthalpy (h3-h4) in kJ/kg
h4=h3-dh3h4//Enthalpy in kJ/kg
Wp=(Wps/np)//Workdone by the pump in kJ/kg
h6=(Wp+h5)//Enthalpy in kJ/kg
tsat=207.15//Saturation temperature at 18 bar in degree C
t9=(tsat-TTD)//Temperature in degree C
h9=875//Enthalpy in kJ/kg
m=((h9-h6)/(h2-h7))//Mass of steam in kg
WT=(dh1h2+(1-m)*dh3h4)//Workdone by the turbine in kJ/kg
Wnet=(WT-Wp)//Net workdone in kJ/kg
ws=(O/Wnet)//Mass flow rate of steam at turbine inlet in kg/s
Q1=((h1-h9)+(1-m)*(h3-h2))//Heat input in kJ/kg
n=(Wnet/Q1)*100//Efficiency of the cycle in percent
Wr=(Wnet/WT)//Work ratio

//Output
printf('(a)Mass flow rate of steam at turbine inlet is %3.0f kg/s \n (b)The cycle efficiency is %3.2f percent \n (c)Work ratio is %3.3f',ws,n,Wr)
