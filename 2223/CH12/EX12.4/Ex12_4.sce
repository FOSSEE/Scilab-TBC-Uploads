// scilab Code Exa 12.4.b Radially tipped blade impeller
phi2=0.268; // Flow coefficient
T01=293;  // in Kelvin
p01=1; //  Initial Pressure in bar
dr=2.667; // diameter ratio(d2/d1)
gamma=1.4;
R=287;
N=8e3; // rotor Speed in RPM
d1=0.18; // Mean diameter at the impeller entry in m
u1=%pi*d1*N/60;
a1=sqrt(gamma*R*T01);
Mb1=u1/a1;
disp(Mb1,"the Mach number at inducer blade entry Mb1=")
M2=sqrt(((dr^2)*(Mb1^2)*(1+(phi2^2)))/(1+(0.5*(gamma-1)*(dr^2)*(Mb1^2)*(1-(phi2^2)))));
disp(M2,"the flow Mach number at impeller exit M2=")
