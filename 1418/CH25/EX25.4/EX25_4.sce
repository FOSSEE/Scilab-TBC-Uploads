//EXAMPLE 25.4
//INDUCTOR WITH VARYING DISPLACEMENT

clc;
funcprot(0);

//Variable Initialisation
Lo=50;..........//Inductance in Mili Henry
xo=0.05;........//Displacement in Centi Meter
Rc=0.5;..........//Coil resistance in 0.5 Ohms
i1=3;............//Current in Amperes
//(a)
x1=0.075;..........//Displacement held constant in Centi Meter
L1=(2*Lo)/(1+(x1/xo));.......//Inductance at x1 in Mili Henry
y1=L1*i1;..............//Flux linkage at x1
Wfd1=(1/2)*L1*(i1^2)*10^-3;.......//Resultant magnetic stored energy in the inductor in Joules
disp(Wfd1,"(a).Resultant magnetic stored energy in the inductor at x1 in Joules:");

//(b)
x2=0.15;....................//Displacement held constant in Centi Meter
L2=(2*Lo)/(1+(x2/xo));.......//Inductance at x2 in Mili Henry
y2=L2*i1;..............//Flux linkage at x2
Wfd2=(1/2)*(y1-y2)*(i1)*10^-3;.......//Resultant magnetic stored energy in the inductor in Joules
disp(Wfd2,"(b).Resultant magnetic stored energy in the inductor at x2 in Joules:");

