//Problem 10.15:

//initializing the variables:
xin2 = 0.0515
xich4 = 0.8111
xic2h6 = 0.0967
xic3h8 = 0.0351
xic4h10 = 0.0056
HVgn2 = 0; // in Btu/scf
HVgch4 = 1013; // in Btu/scf
HVgc2h6 = 1792; // in Btu/scf
HVgc3h8 = 2590; // in Btu/scf
HVgc4h10 = 3370; // in Btu/scf

//calculation:
HVg = xin2*HVgn2 + xich4*HVgch4 + xic2h6*HVgc2h6 + xic3h8*HVgc3h8 + xic4h10*HVgc4h10

printf("\n\nResult\n\n")
printf("\n the gross heating value of the gas mixture is %.0f Btu/scf",HVg)