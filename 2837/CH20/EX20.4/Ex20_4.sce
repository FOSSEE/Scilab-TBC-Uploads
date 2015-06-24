clc
clear
//Initalization of variables
s2=1.5263
sf=1.6993
sfg=1.3313
hf=1164.1 //Btu/lb
hfg=945.3 //Btu/lb
h2=1201.1 //Btu/lb
h1=852.3 //Btu/lb
//calculations
X3=-(s2-sf)/sfg
h3=hf-X3*hfg
h4=218.82
h6=h4
h5=69.7
x=(h4-h5)/(h3-h5)
W= h2-h3+ (1-x)*(h3-h1)
Qs=h2-h4
eff=W/Qs *100
//results
printf("Thermal efficiency = %.2f percent",eff)
