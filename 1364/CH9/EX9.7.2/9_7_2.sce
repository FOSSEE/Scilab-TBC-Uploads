clc
//initialisation of variables
w= 1 //gf/cm^3
Ss= 7.8
Sl= 0.9
D= 1 //cm
D1= 0.1 //cm
g= 981 //cm/sec^2
//CALCULATIONS
F= w*(Ss-Sl)*4*%pi*D^3/(3*8000)
v= F*g/(3*%pi*D1*2)
//RESULTS
printf (' coefficient of viscosity= %.2f poise',v)
