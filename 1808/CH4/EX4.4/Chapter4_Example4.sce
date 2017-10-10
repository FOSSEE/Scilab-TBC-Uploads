clc
clear
//INPUT DATA
pb=100;//Saturated vapour in bar
pc=0.1;//Saturated liquid in bar
two=35;//Cooling water exit temperature in degree C
twi=20;//Cooling water entry temperature in degree C
S1=5.6198;//Entropy in kJ/kg.K
S3=0.649;//Entropy in kJ/kg.K
S5=8.15;//Entropy in kJ/kg.K
h1=2727.7;//Entropy in kJ/kg
h2=1778.3;//Entropy in kJ/kg
h3=191.8;//Enthalpy in kJ/kg
h4=201.79;//Enthalpy in kJ/kg
h5=2584.7;//Enthalpy in kJ/kg
x2=0.63;//Quality of steam
V3=0.001;//Specific volume in m^3/kg
Cpw=4.18;//specific heat of water in kJ/kgk
nt=0.8;//Turbine efficiency in percentage
np=0.9;//Pump efficiency in percentage


//CALCULATIONS
h21=h1-nt*(h1-h2);//Entropy in kJ/kg
h41=((h4-h3)/np)+h3;//Entropy in kJ/kg
nRA=((h1-h21)-(h41-h3))/(h1-h4)*100;//Actual thermal efficiency
m=pb*1000/((h1-h21)-(h41-h3));//Mass flow rate of steam
mx=(m*3600);//Mass flow rate in kg/hr
QS1=m*(h1-h41);//Rate of heat transfer into working medium in MW
QR1=m*(h21-h3);//Rate of heat transfer from the condenser in MW
mw1=(mx*(h21-h3))/((Cpw)*(two-twi))/10^7;//mass flow rate of water in the condenser in kg/s
RwA=((h1-h21)-(h41-h3))/(h1-h21);//work ratio
 
 //OUTPUT
printf('(i) The Actual Thermal efficiency is %3.2f percent \n(ii)The mass flow rate of steam is %3.2f kJ/s \n(iii) The rate of heat transfer into working medium is %3.1f kJ/s \n(iv)The rate of heat transfer from condenser is %3.2f kJ/s\n(v)mass flow rate of water in condenser is %3.3f *10^7 kg/s \n(vi) The work ratio is %f ',nRA,m,QS1,QR1,mw1,RwA)
