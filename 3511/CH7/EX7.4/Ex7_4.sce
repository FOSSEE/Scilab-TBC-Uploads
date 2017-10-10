clc;
cj=2700; // The effective jet velocity from jet engine in m/s
ci=1350; // Flight velocity in m/s
ma=78.6; // Air flow rate in m/s

a=ci/cj;
F=ma*(cj-ci); // Thrust
P=F*ci; // Thrust power
eff_P=2*a/(a+1); // Propulsive efficiency

disp ("N",F,"(i).Thrust = ");
disp ("MN",P/10^6,"(ii). Thrust power = ");
disp ("%",eff_P*100,"(iii). Propulsive efficiency = ");
