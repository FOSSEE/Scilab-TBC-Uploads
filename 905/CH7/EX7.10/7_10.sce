clear;
clc;

// Illustration 7.10
// Page: 461

printf('Illustration 7.10 -  Page: 461\n\n');

// solution
//*****Data*****//
Dd = 1.15*10^-9; // [molecular diffusivity of furfural in water, square m/s]
Dc = 2.15*10^-9; // [molecular diffusivity of furfural in toluene, square m/s]
m = 10.15; // [equilibrium distribution coefficient, cubic m raffinate/cubic m extract]

printf('Illustration 7.10(a) -  Page: 461\n\n');
// Solution(a)
// From example 7.8 and 7.9
dvs = 3.26*10^-4; // [m]
Shd = 6.6; // [sherwood number for dispersed phase]
// From equation 7.52
kd = Shd*Dd/dvs; // [dispersed phase mass transfer coefficient, m/s]
printf("The dispersed-phase mass-transfer coefficient is %e m/s.\n\n",kd);

printf('Illustration 7.10(b) -  Page: 461\n\n');
// Solution(b)

dd = 998;
dc = 868; // [density of continuous phase, kg/cubic m]
uc = 0.59*10^-3; // [viscosity of continuous phase, kg/m.s]
ohm = 182.2; // [rpm]
g = 9.8; // [square m/s]
Di = 0.288; // [m]
sigma = 0.025; // [N/m]
phiD = 0.385;
Dt = 0.863; // [m] 
Scc = uc/(dc*Dc);
Rec = Di^2*ohm/60*dc/uc;
Fr = Di*(ohm/60)^2/g;
Eo = dd*dvs^2*g/sigma;

// From equation 7.53
Shc = 1.237*10^-5*Rec^(2/3)*Scc^(1/3)*Fr^(5/12)*Eo^(5/4)*phiD^(-1/2)*(Di/dvs)^2*(dvs/Dt)^(1/2);
// Therefore 
kc = Shc*Dc/dvs; // [continuous phase mass transfer coefficient, m/s]
printf("The continuous-phase mass-transfer coefficient is %e m/s.\n\n",kc);

printf('Illustration 7.10(c) -  Page: 462\n\n');
// Solution(c)

a = 7065; // [square m/cubic m]
Vt = 0.504; // []
Qd = 0.097/60; // [cubic m/s]
Qc = 0.155/60; // [cubic m/s]

// From equation 7.40
Kod = kd*kc*m/(m*kc+kd); // [m/s]
// From equation 7.45
N_tod = Kod*a*Vt/Qd;
// From equation 7.46
Emd = N_tod/(1+N_tod); 
printf("The Murphree dispersed phase efficiency is %f.\n\n",Emd);

printf('Illustration 7.10(d) -  Page: 462\n\n');
// Solution(d)
// From equation 7.57
fext = Emd/(1+Emd*Qd/(m*Qc));
printf("The fractional extraction of furfural is %f.\n\n",fext);