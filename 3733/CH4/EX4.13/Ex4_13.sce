//Example 4_13
clc;funcprot(0);
//Given data
p_a=750;// mm of Hg
p_v=400;// mm of Hg
p_d=p_a-p_v;// mm of Hg
V_c=13; // m/sec
// Assume Friction loss and exit velocity of water head (V_a^2/(2*g))+h_f=V
V=1.5;//m
rho=1000;// kg/m^3
g=9.81;// m/s^2

//Calculation
w=rho*g;// N
h=(((p_a-p_d)*1.03*10^5)/(w*760))-((V_c^2)/(2*g))+V;// m
printf('\nThe position of the kaplan turbine with respect to tail race,h=%0.2f m',h);
// The answer vary due to round off error
