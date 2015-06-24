clc;
warning("off");
printf("\n\n example10.6 - pg419");
// given
L=300;  //[m] - length of pipe
d=0.06;  //[m] - inside diameter
deltap=147*10^3;  //[Pa] - pressure the pump can supply
ebyd=0.000762;  // relative roughness
p=1000;  //[kg/m^3] - density
mu=1*10^-3;  //[kg/m*sec] - viscosity
Nvk=((d*p)/mu)*((d*(deltap))/(2*L*p))^(1/2);
disp(Nvk,"von karman no.-");
// From the fig  at given von karman no and relative roughness the value of f is-
f=0.0055;
Nre=Nvk/(f^(1/2))
U=(Nre*mu)/(d*p);
printf("\n\n U=%f m/sec",U);


