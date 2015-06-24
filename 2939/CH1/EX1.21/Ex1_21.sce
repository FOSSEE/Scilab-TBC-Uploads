
//EX1_21

clc;

//Given:
mh=1.0078;
mn=1.0087;
m22=21.99431;// atomic mass of Na 22
m23=22.9898;// atomic mass of Na 23
m24=23.9909;// atomic mass of Na 24

//solution:

// part (a)

B1=((11*mh+11*mn)-m22)*931; // in MeV
Bh=B1/m22;
printf("\n The mean binding energy of Na(22) in MeV is = %f ",Bh)

// part (b)

B2=((11*mh+12*mn)-m23)*931; // in MeV
Bo=B2/m23;
printf("\n The mean binding energy of Na(23)in MeV is = %f ",Bo)

// part (c)

B3=((11*mh+13*mn)-m24)*931; // in MeV
Bs=B3/m24;
printf("\n The mean binding energy of Na(24) in MeV is = %f ",Bs)
