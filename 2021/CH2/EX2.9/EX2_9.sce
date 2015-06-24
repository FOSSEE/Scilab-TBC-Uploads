//Finding of Pressure and Temperature
//Given
h=18.288;    //Height in  kilometer
t0=288.15;
l=6.5;       // Lengh in meter
p0=101.18;   //Pressure in N/mm^2
g=9.81;         //gravitational force in m/s^2
//To Find
T=t0-(l*h);
disp("Temperature is ="+string(T)+" kelvin");
Ps=p0*(1-(l*h/t0))^(g/(287.1*l));
disp("Pressure is = "+string(Ps)+" KN/m^2");
