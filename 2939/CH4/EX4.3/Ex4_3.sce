
// Ex4_3

clc;

// Given:
L=6.022*10^23;
// Solution:
// 1 mCi= 3.7*10^7 dis/s
k1=0.693/(15*3600);
N1=3.7*10^7/k1;
m1=(24*N1*10^10)/L;
printf("\n The no. of atoms of Na(24) are = %f",N1)
printf("\n The mass of Na(24) is %f * 10^-10 g",m1)
k2=0.693/(14.3*24*3600);
N2=3.7*10^7/k2;
m2=(32*N2*10^9)/L;
printf("\n \n The no. of atoms of P(32) are = %f",N2)
printf("\n The mass of P(32) is %f * 10^-9 g",m2)
k3=0.693/(1600*3.16*10^7);
N3=3.7*10^7/k3;
m3=(226*N3*10^3)/L;
printf("\n \n The no. of atoms of Ra(226) are = %f",N3)
printf("\n The mass of Ra(226) is %f * 10^-3 g",m3)
