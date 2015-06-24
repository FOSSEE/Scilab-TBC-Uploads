clc;
warning("off");
printf("\n\n example5.9 - pg166");
// given
v=1;  //[cm/sec] - volume velocity or bulk velocity
vol=1;  //[cm^3] - volume
na=2;  // moles of a
nb=3;  // moles of b
nc=4;  // moles of c
mma=2;  //molecular weight of a
mmb=3;  //molecular weight of b
mmc=4;  //molecular weight of c
ma=na*mma;  //[g] weight of a
mb=nb*mmb;  //[g] weight of b
mc=nc*mmc;  //[g] weight of c
NabyA=2+2;  //[mol/cm^2*s] - molar flux = diffusing flux +convected flux
NbbyA=-1+3;  //[mol/cm^2*s] - molar flux = diffusing flux +convected flux
NcbyA=0+4;  //[mol/cm^2*s] - molar flux = diffusing flux +convected flux
NtbyA=NabyA+NbbyA+NcbyA;  //[mol/cm^2*s] - total molar flux
// on a mass basis,these corresponds to
nabyA=4+4;  //[g/cm^2*s]; - mass flux = diffusing flux +convected flux
nbbyA=-3+9;  //[g/cm^2*s]; - mass flux = diffusing flux +convected flux
ncbyA=0+16;  //[g/cm^2*s]; - mass flux = diffusing flux +convected flux
ntbyA=nabyA+nbbyA+ncbyA;  //[g/cm^2*s] - total mass flux
// concentrations are expressed in molar basis
CA=na/vol;  //[mol/cm^3]
CB=nb/vol;  //[mol/cm^3]
CC=nc/vol;  //[mol/cm^3]
CT=CA+CB+CC;  //[mol/cm^3] - total concentration
// densities are on a mass basis
pa=ma/vol;  //[g/cm^3]
pb=mb/vol;  //[g/cm^3]
pc=mc/vol;  //[g/cm^3]
pt=pa+pb+pc;  //[g/cm^3]
Ua=NabyA/CA;  //[cm/sec];
Ub=NbbyA/CB;  //[cm/sec];
Uc=NcbyA/CC;  //[cm/sec];
// the same result will be obtained from dividing mass flux by density
Uz=(pa*Ua+pb*Ub+pc*Uc)/(pa+pb+pc);
printf("\n\n Uz=%fcm/sec",Uz);
Uzstar=(NtbyA/CT);
printf("\n\n Uz*=%fcm/sec",Uzstar);
printf("\n\n for this example both Uz and Uz* are slightly greater than the volume velocity of 1cm/sec, because there is a net molar and mass diffusion in the positive direction.");
 






