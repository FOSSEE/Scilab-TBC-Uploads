//example 9.5
clc; funcprot(0);
// Initialization of Variable
h3=1515.4;//kJ/kg
h4=808.5;//kJ/kg
nreg=0.8;
h2=579.9;//kJ/kg
h1=300.19;//kJ/kg
hx=nreg*(h4-h2)+h2;
neta=(h3-h4-h2+h1)/(h3-hx);
disp(neta*100,"thermal efficiency in %");
clear()
