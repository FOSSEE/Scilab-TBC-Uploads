// Implementation of example 5.5
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//initial velocity 'V1', initial temperature of air 't1',Temperature after passing through heat exchanger 't2', Temperature after expansion 't3',Velocity after leaving turbine 'V3', Temperature after leaving turbine 't4', air flow rate 'w', enthalpy of air 'h', specific heat 'Cp' 
t1 = 15; //degree C
t2 = 800; //degree C
V1 = 30; //m/s
V2 = 30; //m/s
t3 = 650; //degree C
V3 = 60; //m/s
t4 = 500; //degree C
g = 9.8; //m/s2
w = 2; //kg/s 
cp = 1.005; //kJ/kg K 
h2 = cp*t2;
h1 = cp*t1;
h3 = cp*t3;
h4 = cp*t4;
//Rate of heat transfer 'Q12'
Q12 = w*(h2-h1); //kJ/s
mprintf("Rate of heat transfer to air in heat exchanger, Q12 = %d kJ/s\n\n",round(Q12));
//V = V2^2 - V3^2
//Power output from turbine 'Wt'
Wt = w*((V2^2-V3^2)*10^(-3)/2 + (h2-h3)); //kW
mprintf("Power output from turbine, Wt = %0.1f kW\n\n",Wt);
//Velocity at exit
V4 = sqrt(2*(h3-h4)*1000 + V3^2);
mprintf("Velocity at exit from the nozzle, V4 = %d m/s",round(V4));
// end  