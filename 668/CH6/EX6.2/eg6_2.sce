Wb = 10^-4;
Vcb1 = 1;
Vcb2 = 5;
q = 1.6*10^-19;
Db = 20;
Vbe = 0.7;
kT = 26*10^-3; //in eV
ni = 1.5*10^10;
Nab = 5*10^16;
Nde = 5*10^15;
eps0 = 8.84*10^-14; //in F/m
eps = 11.9*eps0;
Vbi = kT*log(Nab*Nde/ni^2)
disp(Vbi,"Built in voltage (in V) = ")
dW2 = 2*eps*(Vbi+Vcb1)*Nde/(q*Nab*(Nab+Nde));
dW = sqrt(dW2);
disp(dW,"The extent of depletion into the base side (in cm) = ")
Wbn = Wb - dW;
disp(Wbn,"neutral base width (in cm) = ")
dW1 = (2*eps*(Vbi+Vcb2)*Nde/(q*Nab*(Nab+Nde)))^0.5;
disp(dW1,"When the collector-base voltage increases to 5 V, extent of depletion into the base side (in cm)")
Wbn1 = Wb - dW1;
disp(Wbn1,"neutral base width (in cm) = ")
nbo = ni^2/Nab;
disp(nbo,"base minority carrier concentrations (in per cm cube) = ")
Jc1 = q*Db*nbo/Wbn*exp(Vbe/kT);
disp(Jc1,"For the base-collector bias of 1 V, collector current density (in A/square cm)")
Jc2 = q*Db*nbo/Wbn1*exp(Vbe/kT);
disp(Jc2,"For the base-collector bias of 5 V, collector current density (in A/square cm)")
slope = (Jc2-Jc1)/(Vcb2-Vcb1);
disp(slope,"The slope of the Jc vs. VCE curve = ")
Va = Jc2/slope - (Vcb2+Vbe);
disp(Va, "Early voltage (in V) = ")
