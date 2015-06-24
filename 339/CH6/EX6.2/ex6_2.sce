// doping concentrations
Na=1*10^18;
Nd=5*10^15;
//intrinsic concentrations
ni=1.5*10^10;
T=300;
term=(Na*Nd)/(ni*ni);
k=1.38*10^-23;
q=1.6*10^-19;
Vdiff=(k*T)*log(term)/q;
disp("Volts",Vdiff,"Barrier voltage");