// Ex6_3

clc;

// Given:
mTe=129.9067; // mol wt. of Te(52)
mCu=64.9278;// mol wt of Cu(29)
mFe=65;// mol wt of Fe(26)
// Solution
E1=(mTe-2*mCu)*931; // Fission Energy in MeV
printf("The fission energy of Te(130)in MeV is = %f",E1)
r=((65)^0.33333);
E2=(26*26*4.8*4.8*10^-20)/(2*1.5*1.6*10^-13*10^-6*r);// Barrier energy in MeV
printf("\n The barrier energy of Te(130) in MeV is = %f",E2)
E3=E2-E1;// Activation Energy in MeV
printf("\n The activation energy of Te(130) in MeV is = %f",E3)

// Since barrier energy is greater than fission energy, spontaneous fission is not possible unless the activation energy is provided.

