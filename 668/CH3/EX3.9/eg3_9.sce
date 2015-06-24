E = 2*10^7; //in V/m
m0 = 0.91 * 10^-30; //in kg
q = 1.6*10^-19;
h = 1.05*10^-34; //in J.s
m1 = 0.065*m0; //for GaAs
m2 = 0.02*m0; // for InAs
E1 = 1.5; //in eV
E2 = 0.4; //in eV
p1 = -4*(2*m1)^0.5*(E1*q)^1.5/(3*q*h*E);
disp(p1,"Tunneling probability is exponent to the power")
tp1 = %e^p1;
disp(tp1,"Tunneling probability = ")
p2 = -4*(2*m2)^0.5*(E2*q)^1.5/(3*q*h*E);
disp(p2,"Tunneling probability is exponent to the power")
tp2 = %e^p2;
disp(tp2,"Tunneling probability = ")
disp("In InAs the band-to-band tunneling will start becoming very important if the field is ∼ 2 × 105 V/cm.")