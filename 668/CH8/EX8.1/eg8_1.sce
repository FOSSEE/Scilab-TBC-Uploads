phiB = 0.8;
N = 10^17;
Dp = 20;
Lp = 10^-4;
A = 8;
kT = 26*10^-3; //in eV
T = 300;
q = 1.6*10^-19;
Js = A*T^2*exp(-phiB/kT);
disp(Js,"For the Schottky case, Js (in A/cm2) = ")
ni = 1.84*10^6;
pn = ni^2/N;
disp(pn)
J0 = q*Dp*pn/Lp;
disp(J0,"For the p+-gate we have from p-n diode theory, J0 (in A/cm2) = ")