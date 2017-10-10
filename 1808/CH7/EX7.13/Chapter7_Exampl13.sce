clc
clear
//INPUT DATA
t2=50;//dry bulb temperature in Degree c
t1=30;//dry bulb temperature in Degree c
t11=25;//wet bulb temperature in Degree c
V=300;//volume in m^3
Ra1=287.3;//rate of flow
p=760;//pressure in mm of Hg
pva=23.74;//Saturation pressure in mm Hg
cp=1.005;//specific pressure
ps2=92.54;//Saturation pressure in mm Hg


//CALCULATIONS
va1=(Ra1*(273+t1))/((p-21.275)*133.5);//Amount of dry air in m^3/kg d.a.
pv1=(pva-((p-pva)*(t1-t11)*1.8)/(2800-(1.3*(1.8*t1+32))));//Saturation pressure in mm Hg
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
ma=V/va1;//mass flow rate in kg d.a.
h1=cp*t1+w1*(2500+1.88*t1);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h2=cp*t2+w1*(2500+1.88*t2);//Enthalpy of air per kg of dry air in kJ/kg d.a.
pv2=(w1*p/0.6379);//saturation pressure in mm Hg
Qa=ma*(h2-h1);//Quantity of heat added in kJ
x2=(pv2/ps2)*100;//Final RH in percentage

//OUTPUT
printf('(i)Quantity of heat added is %3.2f kJ \n (ii)Final RH is %3.2f percentage \n (iii)from chart Final WBT from the chart is 29 Degree C',Qa,x2)
