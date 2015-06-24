clc;
warning("off");
printf("\n\n example9.4 - pg391");
// given
Tpilot=30;
Tlab=10;
N1=690;
N2=271;
D2=3;
D1=1;
n=(log(N1/N2))/(log(D2/D1));
V=12000/7.48;  //[ft^3]
T=((4*V)/%pi)^(1/3);  //[ft]
R=12.69/(30/12);
N3=N2*(1/R)^n;  //[rpm] - impeller speed in the reactor
disp(N3,"impeller speed in rpm=");
D3=0.75*R;  //[ft] - reactor impeller diameter
disp(D3,"reactor impeller diameter in ft=");
P=0.1374*((N3/N2)^3)*(R^5);
disp(P,"power in hp=");
Cf=63025;
Tq=(P/N3)*Cf;  //[inch*lb]
disp(Tq,"torque in inch*lb=");
printf("\n\n At this point, the design is complete. A standard size impeller would be chosen as well as a standard size motor(7.5 hp or 10 hp)");

