clc
//initialisation of variables
L= 203 //mm
A= 10.3 //cm^2
a= 0.39 //cm^2
h0= 508 //mm
h180= 305 //mm
t= 180 //sec
//calculations
k= 2.303*a*L*log10(h0/h180)/(A*t)
//results
printf ('hydraulic conductivity of sand = % 2f in/sec ',k)
