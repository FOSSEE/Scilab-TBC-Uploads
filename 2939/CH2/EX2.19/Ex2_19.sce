
// Ex2_19
clc;

// Given:
//Given:
// 1 ev=8065 cm^-1
E=14.4*10^3;// in eV
v1=2.2*10^-3;// in m/s
// Solution:
f1=E*8065;// frequency in cm^-1
fr=f1*3*10^8*100;
fr1=(fr*v1)/(3*10^8);

printf("The shift in frequency between the source and the sample is = %f Hz",fr1)



