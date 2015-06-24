clc
//initialisation of variables
e= 0.6
D10= 0.09 //mm
D60= 0.16 //mm
//calculations
Cu=D60/D10
k= 35*(e^3/(1+e))*(Cu^0.6)*(D10^2.32)
//results
printf ('hydraulic conductivity = % 3f cm/sec ',k)
