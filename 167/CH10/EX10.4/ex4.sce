//example 4
//The Ideal Reheat Rankine Cycle
clear
clc
disp('the pump and the turbines are isentropic,there are no pressure drops in the boiler and condenser, and steam leaves the condenser and enters the pump as saturated liquid at the condenser pressure.')
P6=10 //pressure at state 6 in kPa
x6=0.896 //quality of steam in state 6
sf=0.6492 // in kJ/kg-K
sfg=7.4996 //in kJ/kg-K
hf=191.81 //in kJ/kg
hfg=2392.1 //in kJ/kg
h6=hf+x6*hfg //specific heat enthalpy in state 6 in kJ/kg
s6=sf+x6*sfg //specific entropy at state 6 in kJ/kg-K
T5=600 // temperature in state 5 in Celsius
s5=s6 //specific entropy in state 5
disp(' At state 5, T5=600C,s5=s6.Hence,')
P5=4.0 //pressure at state 5 in MPa
h5=3674.9 //spacific heat enthalpy at state 5 in kJ/kg
P1=10 //pressure at state 1 in kPa
h1=191.81 //specific heat enthalpy at state 1 in kJ/kg
v1=0.00101 //specific volume at state 1 in m3/kg
P2=15000 //pressure at state 2 in kPa
wpumpin=v1*(P2-P1) //work done by pump in kJ/kg
h2=h1+wpumpin //enthalpy in state 2 in kJ/kg
P3=15000 //pressure in state 3 in kPa
T3=600//temperature in state 3 in °C
h3=3583.1 //specific heat enthalpy in state 3 in kJ/kg
s3=6.6796 //specific entropy in state 3 in kJ/kg-K
P4=4000 //pressure in state 4 in kPa
s4=s3 //specific entropy in state 4
h4=3155.0 //specific heat enthalpy in state 4 in kJ/kg
T4=375.5 //temperature in state 4 in °C
qin=(h3-h2)+(h5-h4) //heat coming in in kJ/kg
qout=h6-h1 //heat going out in kJ/kg
n=1-qout/qin //thermal efficiency of the cycle
printf("\n Hence, the pressure at which the steam should be reheated is = %.1f MPa. \n",P5);
printf("\n Hence, the the thermal efficiency of the cycle is = %.1f. \n",n*100);