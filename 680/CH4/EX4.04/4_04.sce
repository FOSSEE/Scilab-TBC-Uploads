//Problem 4.04:

//initializing the variables:
r1 = 5000; // in scfm
r2 = 3000; // in scfm
T1 = 60; // in deg F
T2 = 70; // in deg F
Ti = 2000; // in F
To = 180; // in F
MWchcl = 112.5; 
MWair = 29;

//calculation:
//convert scfm to acfm using Charle's law
R1 = r1*(460 + T2)/(460 + T1)
R2 = r2*(460 + T2)/(460 + T1)
ndt1 = R1/387
ndt2 = R2/387
mdt1 = ndt1*MWchcl*60
mdt2 = ndt2*MWair*60
mdtin = mdt1 + mdt2
mdtout = mdtin

printf("\n\nResult\n\n")
printf("\n products exit the cooler at %.0f lb/h",mdtout)