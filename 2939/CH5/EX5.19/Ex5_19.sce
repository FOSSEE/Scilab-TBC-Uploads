
// Ex5_19
clc;

// Given:
E1=6;// MeV
mAl=26.981535;
malpha=4.002604;
mP=30.973763;
// Solution:

KE=E1*(27/31);// in MeV

BE=(mAl+malpha-mP)*931;// in MeV

Ex=KE+BE;

printf("\n The excitation energy of compound nucleus is = %f MeV",Ex)
