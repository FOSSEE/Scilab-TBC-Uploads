clc
//initialisation of variables
e= 0.6
D10= 0.09 //mm
//calculations
k= 2.4622*(D10^2*(e^3/(1+e)))^0.7825
//results
printf ('hydraulic conductivity = % 4f cm/sec ',k)
