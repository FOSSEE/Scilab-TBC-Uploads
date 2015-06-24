//example5
//The Ideal Regenerative Rankine Cycle
clear
clc
P1=10 //Pressure in state 1 in kPa
h1=191.81 //Specific enthelpy in state 1 in kJ/kg
v1=0.00101 //Specific volume in state 1 in m3/kg
P2=1200 //Pressure in state 2 in kPa
wpumpin=v1*(P2-P1) //work done by the pump 1 in kJ/kg
h2=h1+wpumpin //Specific Enthalpy in state 2 in kJ/kg
v3=0.001138 //Specific volume in state 3 in m3/kg
h3=798.33 //Specific enthalpy in kJ/kg
P3=1200 //Pressure in state 3 in kPa
P4=15000 //Pressure in state 4 in kPa
wpumpin2=v3*(P4-P3) //work done by pump 2 in kJ/kg
h4=h3+wpumpin2 //Specific ehnthalpy in state 4 in kJ/kg
P5=15 //Pressure in state 5 in MPa
T5=600 //Temp. in state 5 in °C
P6=1200 //Pressure in state 6 in kPa
h5=3583.1 //Specific enthalpy in state 5 in kJ/kg
s5=6.6796 //Specific entropy in state 5 in kJ/kg-K
h6=2860.2 //Specific enthalpy in state 6 in kJ/kg
T6=218.4//Temp. in state 6 in °C
sf=0.6492 //in kJ/kg-K
sfg=7.4996 //in kJ/kg-K
s5=6.6796 //Specific entropy in state 5 in kJ/kg-K
s6=s5 //Specific entropy in state 6
s7=s5 //Specific entropy in state 7
x7=(s7-sf)/sfg //quality of steam in state 7
hf=191.81 //in kJ/kg
hfg=2392.1 //in kJ/kg
h7=hf+x7*hfg //Specific enthalpy in state 7 in kJ/kg
y=(h3-h2)/(h6-h2) //fraction of steam extracted from the turbine
qin=h5-h4 //heat coming in in kJ/kg
qout=(h7-h1)*(1-y) //heat going out in kJ/kg
n=1-qout/qin //Thermal efficiency of the cycle
printf("\n Hence, the fraction of steam extracted from the turbine  is = %.4f. \n",y);
printf("\n and thermal efficiency of the cycle is = %.3f. \n",n);