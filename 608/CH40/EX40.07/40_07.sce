//Problem 40.07: A concentric cable has a core diameter of 25 mm and an inside sheath diameter of 80 mm. The relative permittivity of the dielectric is 2.5, the loss angle is 3.5 x 10-3 rad and the working voltage is 132 kV at 50 Hz frequency. Determine for a 1 km length of the cable (a) the capacitance, (b) the charging current and (c) the power loss.

//initializing the variables:
e0 = 8.85E-12; 
er = 2.5;
di = 0.08; // in m
d0 = 0.025; // in m
r = 1000; // in m
V = 132000; // in Volts
f = 50; // in Hz
del = 3.5E-3; // rad.

//calculation:
//core radius, a
a = d0/2
//internal sheath radius,
b = di/2
//capacitance
C = 2*%pi*e0*er*1E3/(log(b/a))
//Charging current
I = V*2*%pi*f*C
//power loss
P = (2*%pi*f*C*tan(del))*V^2

printf("\n\n Result \n\n")
printf("\n (a)capacitance for a 1 km length is %.2E F",C)
printf("\n (b)the charging current %.2E A/km",I)
printf("\n (c)power loss %.0f W",P)