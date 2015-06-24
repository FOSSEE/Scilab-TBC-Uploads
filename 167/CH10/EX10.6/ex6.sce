//example 6
//The Ideal Reheat–Regenerative Rankine Cycle
clear
clc
h1=191.81 //specific heat enthalpy for state 1 in kJ/kg
h2=192.30 //specific heat enthalpy for state 2 in kJ/kg
h3=640.09 //specific heat enthalpy for state 3 in kJ/kg
h4=643.92 //specific heat enthalpy for state 4 in kJ/kg
h5=1087.4 //specific heat enthalpy for state 5 in kJ/kg
h6=1087.4 //specific heat enthalpy for state 6 in kJ/kg
h7=1101.2 //specific heat enthalpy for state 7 in kJ/kg
h8=1089.8 //specific heat enthalpy for state 8 in kJ/kg
h9=3583.1//specific heat enthalpy for state 9 in kJ/kg
h10=3155.0 //specific heat enthalpy for state 10 in kJ/kg
h11=3674.9 //specific heat enthalpy for state 11 in kJ/kg
h12=3014.8 //specific heat enthalpy for state 12 in kJ/kg
h13=2335.7 //specific heat enthalpy for state 13 in kJ/kg
wpumpin1=0.49 //work done by pump 1 in kJ/kg
wpumpin2=3.83 //work done by pump 2 in kJ/kg
wpumpin3=13.77 //work done by pump 3 in kJ/kg
y=(h5-h4)/(h5-h4+h10-h6) //fraction of steam extracted
z=(1-y)*(h3-h2)/(h12-h2)
h8=(1-y)*h5+y*h7 //specific heat enthalpy for state 8 in kJ/kg
qin=(h9-h8)+(1-y)*(h11-h10) //heat coming in in kJ/kg
qout=(1-y-z)*(h13-h1) //heat going out in kJ/kg
n=1-qout/qin //thermal efficiency of cycle
printf("\n Hence, the fraction of steam extracted from the turbine  is = %.4f. \n",y);
printf("\n and thermal efficiency of the cycle is = %.3f. \n",n);