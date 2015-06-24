clc;
warning("off");
printf("\n\n example10.5 - pg417");
// given
L=300;  //[m] - length of pipe
d=0.06;  //[m] - inside diameter
deltap=147*10^3;  //[Pa] - pressure the pump can supply
ebyd=0.000762;  // relative roughness
p=1000;  //[kg/m^3] - density
mu=1*10^-3;  //[kg/m*sec] - viscosity
tauw=(d*(deltap))/(4*L);
// using the hit and trial method for estimation of flow velocity
// let 
f=0.005;
U=((2*tauw)/(p*f))^(1/2);
Nre=(d*U*p)/mu;
// from the graph value of f at the above calculated reynolds no. and the given relative roughness(e/d)
f=0.0054;
U=((2*tauw)/(p*f))^(1/2);
Nre=(d*U*p)/mu;
// from the graph value of f at the above calculated reynolds no. and the given relative roughness(e/d)
f=0.0053;
U=((2*tauw)/(p*f))^(1/2);
Nre=(d*U*p)/mu;
// from the graph value of f at the above calculated reynolds no. and the given relative roughness(e/d)
f=0.0053;
// At this point the value of f is deemed unchanged from the last iteration .Hence, the values obtained after the third iteration are the converged values
printf("\n\n The maximum flow velocity is \n U=%f m/sec",U);

