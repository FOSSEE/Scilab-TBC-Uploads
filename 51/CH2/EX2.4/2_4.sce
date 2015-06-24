clc;
clear;
sg1=0.90;//specific gravity of oil
sg2=13.6;//specific gravity of Hg
h1=36;//inches
h2=6;//inches
h3=9;//inches
//pressure equation: airp+h1*sg1*(gamma water)+h2*sg1*(gamma water)-h3*sg2*(gamma water)=0
airp=-(sg1*62.4*((h1/12)+(h2/12)))+(sg2*62.4*(h3/12));//lb/ft^2
//gage pressure = airp
pgage=airp/144;
disp("psi",pgage,"Gage pressure=")