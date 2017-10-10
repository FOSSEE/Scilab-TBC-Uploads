// Implementation of example 5.8
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//temperature at certain instance 't', power to paddle wheel 'Wt'
t = -273; //degree C
//Let
u=0;
u0 = u - 0.718*t;
//hp = u + p*v;  and  u = 0.718(t+273) and  pv=0.278(t+273) thus
t = 150; //degree C
hp = 1.005*(t+273); //kJ/kg
Wt = 0.1; //kJ/s or kW
//dm/dt = m   dW/dt = Wt
//rate of flow of air out of tank 'm'
m = (1/hp)*Wt;//kg/s
m = m*3600; //kg/h
printf("Rate of flow of air out of tank = %.3f kg/h",m);
// end