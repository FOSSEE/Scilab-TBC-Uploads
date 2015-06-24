
//Ex6_11
clc;
// Given:
mPu=239.052161;
mPd=107.903920;
mXe=128.904784;
mn=1.0087;
mGd=154.922010;
mBr=80.916344;

// Solution: Part (a)

dm1=(mPu-(mPd+mXe+2*mn));// delta m
E1=dm1*931;// energy of given fission in MeV
printf("The energy for the Pd(108)+Xe(129)+3n fission is = %f MeV",E1)

dm2=(mPu-(mGd+mBr+3*mn));// delta m
E2=dm2*931;// energy of given fission in MeV
printf("\n The energy for the Gd(155)+Br(81)+4n fission is = %f MeV",E2)
