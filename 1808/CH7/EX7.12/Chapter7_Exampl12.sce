clc
clear
//INPUT DATA
tw1=20;//wet bulb temperature in Degree c
t1=30;//dry bulb temperature in Degree c
t2=15;//dry bulb temperature in Degree c
pva=17.0521;//Saturation pressure in mm Hg
p=760;//pressure in mm of Hg
ps1=31.81;//pressure in mm of Hg
ps2=12.77;//pressure in mm of Hg

//CALCULATIONS
pv1=(pva-((p-pva)*(t1-tw1)*1.8)/(2800-(1.3*(1.8*t1+32))));//Saturation pressure in mm Hg
x1=(pv1/ps1)*100;//realtive humidity in percentage
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
pv2=12.55;//Saturation pressure in mm Hg
x2=(pv2/ps2)*100;//realtive humidity in percentage

//OUTPUT
printf('(a)Initial RH is %3.2f percentage \n (ii)Final RH is %3.2f percentage \n (c) from the chart Final wet bulb temperature according to chart is 14.5 Degree C ',x1,x2)


