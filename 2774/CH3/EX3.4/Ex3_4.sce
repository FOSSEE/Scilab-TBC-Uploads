clc//
//initialization of variables
M=100 // mass in kg
d=3 // depth by which mass drops in m
V=0.002 // increased volume in m^3
g=9.81 // gravitational accleration in m/sec^2
Pgauge=100*1000// gauge pressure in N/m
Patm =100*1000 // atmospheric pressure in N/m
P=Pgauge+Patm // to get absolute pressure

//calculate work done by paddle wheel
Wpaddlewheel=(-M*g*d) // work is negative as it is done on the system

//calculate work done on piston it 
Wboundary=P*V // area mulitiplied by height is volume thus W=P.V 
//net work
Wnet=Wpaddlewheel+Wboundary; // Work in joule as SI units are used
printf("The Net Work done is "+string(Wnet)+" J")
// in textbook answer is 2450 J which is when we assume g=9.80 
