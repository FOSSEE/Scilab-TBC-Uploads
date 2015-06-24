
// Ex5_24

clc;

E1=2.75;// MeV
E2=14;// in MeV
mMg=23.985045;
malpha=4.00260;
mSi=27.9763;
mNe=19.99244;
mCo=58.93320;
mRb=78.9239
// Solution:

KE1=E1*(24/28);// in MeV

BE1=(mMg+malpha-mSi)*931;// in MeV

Ex1=KE1+BE1;

printf("\n The excitation energy of compound nucleus Si* is = %f MeV",Ex1)
KE2=E2*(59/79);// in MeV

BE2=(mNe+mCo-mRb)*931;// in MeV

Ex2=KE2+BE2;

printf("\n The excitation energy of compound nucleus Rb*  is = %f MeV",Ex2)
