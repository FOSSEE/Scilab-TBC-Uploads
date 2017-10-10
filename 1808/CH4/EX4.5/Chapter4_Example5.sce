clc
clear
//INPUT DATA
T1=500;//temperature in degree C
pb=70;//Saturated vapour in bar
pc=0.2;//Saturated liquid in bar
v1=30;//Specific volume in m^3/kg
v2=90;//Specific volume in m^3/kg
ms=130000;//mass flow rate in kg/hr
h1=3410.3;//Enthalpy in kJ/kg
S1=6.798;//Entropy in kJ/kg.K
h3=251.2;//Enthalpy in kJ/kg
h5=2609.9;//Enthalpy in kJ/kg
v3=0.1;//Specific volume in m^3/kg
S3=0.8321;//Entropy in kJ/kg.K
S5=7.9094;//Entropy in kJ/kg.K


//CALCULATIONS
x2=(S1-S3)/(S5-S3);//quality of steam
h2=(h3+(x2*(h5-h3)));//Enthalpy in kJ/kg
Wt=(h1-h2)+((v1^2-v2^2)/(2*1000));//Tyrbine work in kJ/kg
h4=h3+(v3*(pb-pc));//enthalpy in kJ/kg
nRi=((Wt-(h4-h3))/(h1-h4))*100;//Ideal thermal efficiency in percentage
P=ms*((Wt-(h4-h3))/3600)/1000;//Power developed in MW


//OUTPUT
printf('(i) The Ideal Thermal efficiency is %3.1f percent \n(ii) The power developed is %3.1f MW ',nRi,P)
