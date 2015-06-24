// Ex4_8

clc;
// Given:
E1=0.059;
E2=2.5;
E3=1.33;
Ei=0;
Ef=0;

// Solution:
// delta E for 1,2 & 3 photon 
dE1=E1-Ei;
dE2=E2-E3;
dE3=E3-Ef;
// delta I for 1,2 & 3 photon 
dI1=2-5;
dI2=4-2;
dI3=2-0;
// EL/ML for 1,2 & 3 photon 
ELML1=3+1+1
ELML2=2+1+1;
ELML3=2+1+1;
printf("\n For first photon, dE1=%f MeV, dI1=%f, since EL/ML1=%f & (L+PI+PF) is odd, M3",dE1,dI1,ELML1)
printf("\n For second photon, dE2=%f MeV, dI2=%f,since  EL/ML2=%f & (L+PI+PF) is even, E2",dE2,dI2,ELML2)
printf("\n For third photon, dE3=%f MeV, d3I=%f, since EL/ML3=%f & (L+PI+PF) is even, E2",dE3,dI3,ELML3)
