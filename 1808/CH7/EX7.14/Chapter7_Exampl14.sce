clc
clear
//INPUT DATA
t1=15;//dry bulb temperature in Degree C
t3=41;//heating coil temperature in Degree C
t11=11;//wet bulb temperature in Degree C
p=760;//pressure in mm of Hg
x=0.4;//realtive humidity in percentage
pva=9.83;//Saturation pressure in mm Hg
ps2=33.68;//Saturation pressure in mm Hg
cp=1.005;//specific pressure

//CALCULATIONS
t2=t3-(x*(t3-t1));//dry bulb temperature in Degree c
pv1=(pva-((p-pva)*(t1-t11)*1.8)/(2800-(1.3*(1.8*t1+32))));//Saturation pressure in mm Hg
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
x2=(pv1/ps2)*100;//realtive humidity in percentage
h1=cp*t1+w1*(2500+1.88*t1);//Enthalpy of air per kg of dry air in kJ/kg d.a.
h2=cp*t2+w1*(2500+1.88*t2);//Enthalpy of air per kg of dry air in kJ/kg d.a.
Qa=h2-h1;//Sensible heat addition in kJ/kg d.a.

//OUTPUT
printf('(a)DBT is %3.1f Degree C \n (b)WBT is from the chart equal to 16.8 Degree C \n (c)RH is %3.2f percentage \n (d)Sensible heat addition is %3.2f kJ/kg d.a ',t2,x2,Qa)



