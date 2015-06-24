//Ex1_8

clc;

//Given:
e1=1; // in MeV
e2=2; // in MeV
ma=4; // in u(amu)
md=2; // in u(amu)
mp=1; // in u(amu)

// 1u = 1.6*10^-27 Kg

//solution: part a)For alpha particles

v1a=((2*e1*10^6*1.6*10^-19)/(ma*1.6605*10^-27))^.5;
printf("\n The velocity of alpha particles for 1 MeV in m/s is = %f ",v1a)// For 1 MeV

v2a=((2*e2*10^6*1.6*10^-19)/(ma*1.6605*10^-27))^.5;
printf("\n The velocity of alpha particles for 2 MeV in m/s is = %f ",v2a)// For 2 MeV

//solution: part b)For deuteron particles

v1b=((2*e1*10^6*1.6*10^-19)/(md*1.6605*10^-27))^.5;
printf("\n The velocity of deuteron particles for 1 MeV in m/s is = %f ",v1b) // For 1 MeV


v2b=((2*e2*10^6*1.6*10^-19)/(md*1.6605*10^-27))^.5;
printf("\n The velocity of deuteron particles for 2 MeV in m/s is = %f ",v2b) // For 2 MeV

//solution: part c)For proton particles

v1p=((2*e1*10^6*1.6*10^-19)/(mp*1.6605*10^-27))^.5;
printf("\n The velocity of proton particles for 1 MeV in m/s is = %f ",v1p) // For 1 MeV


v2p=((2*e2*10^6*1.6*10^-19)/(mp*1.6605*10^-27))^.5;
printf("\n The velocity of proton particles for 2 MeV in m/s is = %f ",v2p) // For 2 MeV



