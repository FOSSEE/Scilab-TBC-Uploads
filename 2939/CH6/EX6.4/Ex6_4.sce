
// Ex6_4
clc;
// Given:
mSn=113.903; // mol wt. of Sn(50)
mMn=56.9383;// mol wt of Mn(25)
mFe=57;//mol wt of Fe(26)
// Solution
E1=(mSn-2*mMn)*931; // Fission Energy in MeV
printf("\n The fission energy in MeV is = %f",E1)
r=((mFe)^0.33333);
E2=(25*25*4.8*4.8*10^-20)/(2*1.5*1.6*10^-13*10^-6*r);// Barrier energy in MeV
printf("\n The barrier energy in MeV is = %f",E2)
E3=E2-E1;// Activation Energy in MeV
printf("\n The activation energy in MeV is = %f",E3)
