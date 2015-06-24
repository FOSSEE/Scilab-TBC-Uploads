
// Ex5_20
clc;
// Given:
E1=1.4;// MeV
mBi=208.980417;
mn=1.008665;
mBI=209.984110;
// Solution:part(a)

KE1=0;// in MeV
BE1=(mBi+mn-mBI)*931;// in MeV
Ex1=KE1+BE1;
printf("\n The excitation energy of compound nucleus is = %f MeV",Ex1)

// Solution:part(b)

KE2=E1*(209/210);// in MeV
BE2=(mBi+mn-mBI)*931;// in MeV
Ex2=KE2+BE2;
printf("\n The excitation energy of compound nucleus is = %f MeV",Ex2)
