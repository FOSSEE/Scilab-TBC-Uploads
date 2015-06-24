
// Ex5_1
clc;

// Given:
mMg=23.985045;
md=2.014102;
mAl=25.986900;
mNe=19.99244;
mNa=21.944;
// Solution:
// for compound nucleus Al*(26)
KE1=(24/26)*8;
BE1=(mMg+md-mAl)*931;// in MeV
EE1=BE1+KE1;
// for compound nucleus Na*(22)
KE2=(20/22)*8;
BE2=(mNe+md-mNa)*931;// in MeV
EE2=BE2+KE2;

printf("The excitation energy for Al*(26) is = %f MeV and that of Na*(22) is = %f MeV",EE1,EE2)
