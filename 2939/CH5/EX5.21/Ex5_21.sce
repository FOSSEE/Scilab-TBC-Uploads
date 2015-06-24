
// Ex5_21
clc;
Ex=12.8;// MeV
mB=10.012939;
malpha=4.002604;
mN=14.003074;
mC=12.00;
md=2.014102;
// Solution:part(a)

BE1=(mB+malpha-mN)*931;// in MeV
KE1=Ex-BE1;
E1=KE1*(14/10);
printf("\n The resonance in part(a) will occur at = %f MeV",E1)

// Solution:part(b)


BE2=(mC+md-mN)*931;// in MeV
KE2=Ex-BE2;
E2=KE2*(14/12);

printf("\n The resonance in part(b) will occur at = %f MeV",E2)
