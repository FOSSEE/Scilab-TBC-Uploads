
// Ex6_8
clc;
// Given:
mU=236.04533;
mU1=236.045733;
mU2=235.043933;
mY=94.912;
mSb=136.91782;
mn=1.0087;
Na=6.02*10^23;

// Solution:
E1=(mU-mY-mSb-4*mn)*931; // Fission Energy in MeV
printf("The fission energy in MeV is = %f",E1)
r1=((mY)^0.33333);
r2=((mSb)^0.33333);
E2=(39*51*4.8*4.8*10^-20)/(1.5*10^-13*(r1+r2)*1.6*10^-6);// Barrier energy in MeV
printf("\n The barrier energy in MeV is = %f",E2)
E3=E2-E1;// Activation Energy in MeV
printf("\n The activation energy in MeV is = %f",E3)
// Note : There is discrepancy in the final answer.
E4=(mU2+mn-mU1)*931; // Fission Energy in MeV
printf("\n The fission by thermal neutrons is not possible since excitation energy %f  is less than activation energy.",E4)
