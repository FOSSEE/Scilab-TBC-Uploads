
clc
//initialization of variables
T = 26.2 // centigrade
T0 = 4 // centigrade
Tinf = 40 //centigrade
z = 1.3//cm
t = 180 //seconds
//calculations
k = erfinv((T-T0)/(Tinf-T0))
alpha = (1/(4*t))*((z/k)^2)//cm^2/sec
//Results
printf("The thermal diffusivity is %.3f",alpha)//answer wrong in textbook
