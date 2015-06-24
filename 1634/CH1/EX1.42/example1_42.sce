

//exapple 1.42
clc; funcprot(0);
// Initialization of Variable
aziA=32+41/60+30/3600;//azimuth of A
aziB=110+28/60+42/3600;//azimuth of B
vaA=10+21/60+12/3600;//vertical angle of A
vaB=-2-18/60-30/3600;//verticsl angle of B
lA1=11;
lB1=11.5;
rA1=7.5;
rB1=7;
lB2=10;
lA2=10.5;
rB2=7.5;
rA2=8;
d=20;
//partA
sigl=lA1+lA2;
sigr=rA1+rA2;
b=sigl/4*d-sigr/4*d;
i=tan(vaA);
caziA=aziA+i*29.95/3600;
disp(caziA,"corrected azimuth of A in (degrees):");
//partB

i=tan(vaB);
caziB=aziB+i*b/3600;
disp(caziB,"corrected azimuth of B in (degrees):");
ha=caziB-caziA;
disp(ha,"horizontal difference of angle between A & B in (degrees):")
