
// Ex4_13
clc;

// Given:
dm=0.006332;// in u
ma=4;
mCm=244;

// Solution:

E=dm*931;// in MeV
KE=E*(ma/mCm); // in MeV
v=sqrt((2*KE*1.6*10^-13)/(240*1.6605*10^-27));
printf("The Kinetic Energy and velocity are %f MeV and %f m/s respectively",KE,v)

