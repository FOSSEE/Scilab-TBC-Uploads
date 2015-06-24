clc;
warning("off");
printf("\n\n example5.10 - pg171");
// given (from example 5.9)
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
// concentrations are expressed in molar basis
CA=na/vol;  //[mol/cm^3]
CB=nb/vol;  //[mol/cm^3]
CC=nc/vol;  //[mol/cm^3]
CT=CA+CB+CC;  //[mol/cm^3] - total concentration
// densities are on a mass basis
pa=ma/vol;  //[g/cm^3]
pb=mb/vol;  //[g/cm^3]
pc=mc/vol;  //[g/cm^3]
Ua=NabyA/CA;  //[cm/sec];
Ub=NbbyA/CB;  //[cm/sec];
Uc=NcbyA/CC;  //[cm/sec];
U=(pa*Ua+pb*Ub+pc*Uc)/(pa+pb+pc);
Ustar=(NtbyA/CT);
// the fluxes relative to mass average velocities are found as follows
JabyA=CA*(Ua-U);  //[mol/cm^2*sec]
JbbyA=CB*(Ub-U);  //[mol/cm^2*sec]
JcbyA=CC*(Uc-U);  //[mol/cm^2*sec]
printf("\n\n fluxes relative to mass average velocities are-");
printf("\n\n Ja/A=%fmol/cm^2*sec",JabyA);
printf("\n Jb/A=%fmol/cm^2*sec",JbbyA);
printf("\n Jc/A=%fmol/cm^2*sec",JcbyA);
jabyA=pa*(Ua-U);  //[g/cm^2*sec]
jbbyA=pb*(Ub-U);  //[g/cm^2*sec]
jcbyA=pc*(Uc-U);  //[g/cm^2*sec]
printf("\n\n ja/A=%fg/cm^2*sec",jabyA);
printf("\n jb/A=%fg/cm^2*sec",jbbyA);
printf("\n jc/A=%fg/cm^2*sec",jcbyA);
// the fluxes relative to molar average velocity are found as follows
JastarbyA=CA*(Ua-Ustar);  //[mol/cm^2*sec]
JbstarbyA=CB*(Ub-Ustar);  //[mol/cm^2*sec]
JcstarbyA=CC*(Uc-Ustar);  //[mol/cm^2*sec]
printf("\n\n fluxes relative to molar average velocities are-");
printf("\n\n Ja*/A=%fmol/cm^2*sec",JastarbyA);
printf("\n Jb*/A=%fmol/cm^2*sec",JbstarbyA);
printf("\n Jc*/A=%fmol/cm^2*sec",JcstarbyA);
jastarbyA=pa*(Ua-Ustar);  //[g/cm^2*sec]
jbstarbyA=pb*(Ub-Ustar);  //[g/cm^2*sec]
jcstarbyA=pc*(Uc-Ustar);  //[g/cm^2*sec]
printf("\n\n ja*/A=%fg/cm^2*sec",jastarbyA);
printf("\n jb*/A=%fg/cm^2*sec",jbstarbyA);
printf("\n jc*/A=%fg/cm^2*sec",jcstarbyA);

