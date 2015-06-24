u = 1500*10^-4; // in m2/V.s
m0 = 0.91 * 10^-30; //in kg
q = 1.6*10^-19;
kt = 0.19;
kl = 0.98;
ks = 3*kt*kl/(2*kl+kt);
t = u*ks*m0/q;
disp(t,"The scattering time(in s) =")