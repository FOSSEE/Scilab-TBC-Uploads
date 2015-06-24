
// Ex6_12
clc;
// Given:

mFm=250.079;
mSn=124.9077;
Na=6.02*10^23;

// Solution:
E1=(mFm-2*mSn)*931; // Fission Energy in MeV
printf("The fission energy in MeV is = %f",E1)

r=((mSn)^0.33333);
E2=(50*50*4.8*4.8*10^-20)/(2*1.5*10^-13*(r)*1.6*10^-6);// Barrier energy in MeV
printf("\n The barrier energy in MeV is = %f",E2)

