phiB = 0.9;
Nd = 10^18;
dEc = 0.24;
eps0 = 8.84*10^-14; //in F/m
epsb = 12.2*eps0;
ds = 30*10^-8;
d = 350*10^-8;
VG1 = 0;
VG2 = -0.5;
q = 1.6*10^-19;
Vp2 = q*Nd*(d-ds)^2/epsb;
disp(Vp2,"The parameter Vp2 (in V) of this structure = ")
Voff = phiB - Vp2 - 0.24;
disp(Voff,"threshold voltage (in V)")
Ns1 = -epsb*Voff/q/d;
Ns2 = epsb*(VG2-Voff)/q/d;
disp(Ns1,"The 2DEG carrier concentration (in per sqaure cm) at 0 V = ")
disp(Ns2,"The 2DEG carrier concentration (in per sqaure cm) at -0.5 V = ")