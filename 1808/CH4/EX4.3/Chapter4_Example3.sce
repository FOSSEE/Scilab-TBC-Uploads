clc
clear
//INPUT DATA
pb=100;//Saturated vapour pressure in bar
pc=0.1;//Saturated liquid pressure in bar
two=35;//Cooling water exit temperature in degree C
twi=20;//Cooling water entry temperature in degree C
S1=5.6198;//Entropy in kJ/kg.K
S3=0.649;//Entropy in kJ/kg.K
S5=8.15;//Entropy in kJ/kg.K
h1=2727.7;//Enthalpy in kJ/kg
h3=191.8;//Enthalpy in kJ/kg
h5=2584.7;//Enthalpy in kJ/kg
V3=0.001;//Specific volume in m^3/kg
Cpw=41.8;//specific heat of water in kJ/kgk


//CALCULATIONS
x2=(S1-S3)/(S5-S3);//quality of steam
S1=S3+x2*(S5-S3);//Entropy in kJ/kg.K
h2=h3+x2*(h5-h3);//Enthalpy in kJ/kg
Wp=V3*(pb-pc);//Pump work in kJ/kg
h4=h3+Wp;//Enthalpy in kJ/kg
Wt=h1-h2;//Turbine work in kJ/kg
Wn=Wt-Wp;//Net work in kJ/kg
nR=(Wn/(h1-h4))*100;//Thermal efficiency
m=((pb*1000*3600)/Wn)/10^5;//Mass flow rate of steam in kg/hr *10^5
mx=((pb*1000)/Wn);//Mass flow rate of steam in kg/s
QS1=mx*(h1-h4);//Rate of heat transferred into fluid in kJ/kg
QR1=mx*(h2-h3);//rate of heat transfer from condenser in kJ/s
mw1=(((h2-h3)*m)/((two-twi)*Cpw));//Mass flow rate of water in kg/hr *10^6
Rw=((h1-h2)-Wp)/(h1-h2);//Work ratio

//OUTPUT
printf('(i) The Thermal efficiency is %3.2f percent \n(ii)The mass flow rate of steam is %3.2f * 10^5 kJ/hr \n(iii) The rate of heat transfer into working fluid is %3.1f kJ/s \n(iv)The rate of heat transfer from condenser is %3.2f kJ/s\n(v)mass flow rate of water in condenser is %3.1f *10^6 kg/hr \n(vi) The work ratio is %f ',nR,m,QS1,QR1,mw1,Rw)

