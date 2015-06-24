dEtg = 1.85;
band_gap = 1.43; //for GaAs-AlGaAs system
dEg = dEtg - band_gap;
dEc = dEg*2/3;
dEv = dEg/3;
disp(dEc, "Conduction band offset(in eV) =")
disp(dEv, "Valence band offset(in eV) =")