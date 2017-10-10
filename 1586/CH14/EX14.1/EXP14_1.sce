clc;funcprot(0);//EXAMPLE 14.1
// Initialisation of Variables
d1=0.5;..........//Diameter of a steel Cable in in.
rhoy=70000;........//Yield Strength of Steel Cable in psi
rhoa1=36000;........//Yield Strength of Aluminum in psi
rhos=0.284;..........//Density of Steel in lb/in^3
rhoa2=0.097;.........//Density of Aluminum in lb/in^3
//CALCULATIONS
F=rhoy*((%pi/4)*(d1^2));........//Load applied on Aluminum in lb
d2=sqrt((F/rhoa1)*(4/(%pi)));.......//Diameter of Aluminum in in.
Ws=(%pi/4)*(d1^2)*12*rhos;..........//Weight of Steel  in lb/ft
Wa=(%pi/4)*(d2^2)*12*rhoa2;..........//Weight of        Aluminum in lb/ft
disp(F,"a. Load applied on Aluminum in lb:")
disp(d2,"b. Diameter of Aluminum in in.: ")
disp(Ws,"c.  Weight of Steel  in lb/ft:")
disp(Wa,"Weight of Aluminum in lb/ft:")
