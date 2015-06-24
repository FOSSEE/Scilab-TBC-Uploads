
clc
clear
//Input data
p=40//Pressure in bar
T1=400+273//Temperature in K
T2=40+273//Temperature in K
x=[10,515.5,72.23,363.0,0.1478,0.5167,80.9*10^-6,0.0333]//Property values from table p(bar),t(degree C), hf,hg(kJ/kg),sf,sg(kJ/kg.K),vf,vg(m^3/kg)
y=[0.2,277.3,38.35,336.55,0.0967,0.6385,77.4*10^-6,1.163]//Property values from table p(bar),t(degree C), hf,hg(kJ/kg),sf,sg(kJ/kg.K),vf,vg(m^3/kg)

//Calculations
h1=3216//Enthalpy in kJ/kg
s1=6.7690//Entropy in kJ/kg.K
s2=s1//Entropy in kJ/kg.K
x2=(s2-0.5725)/(8.2570-0.5725)//Dryness fraction
h2=167.57+x2*2406.7//Enthalpy in kJ/kg
h3=167.57//Enthalpy in kJ/kg
h4=(167.57+p*100*1.008*10^-3)//Enthalpy in kJ/kg
h5=1087.31//Enthalpy in kJ/kg
h6=2801.4//Enthalpy in kJ/kg
ha=x(4)//Enthalpy in kJ/kg
sa=x(6)//Entropy in kJ/kg.K
sb=sa//Entropy in kJ/kg.K
xb=(sb-y(5))/(y(6)-y(5))//Dryness fraction
hb=(y(3)+xb*(y(4)-y(3)))//Enthalpy in kJ/kg
hc=y(3)//Enthalpy in kJ/kg
hd=hc//Enthalpy in kJ/kg
m=(h6-h5)/(hb-hc)//Mass of mercury circulated per kg of steam
Q1=m*(ha-hd)+(h1-h6)+(h5-h4)//Heat supplied in kJ/kg
Q2=(h2-h3)//Heat rejected in kJ/kg
nc=(1-(Q2/Q1))*100//Efficiency in percent

//Output
printf('(a) The amount of mercury circulated per kg of water is %3.4f kg \n (b) The efficiency of the combined cycle is %3.1f percent',m,nc)
