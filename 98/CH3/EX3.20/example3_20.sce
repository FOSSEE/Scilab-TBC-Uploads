//Chapter 3
//Example 3_20
//Page 64

clear;clc;

bl=18;
sc=20;
asso=7.35*1e6;
ablso=101.35*1e6;
pl=12;
hours=2190;

printf("Standby station\n\n");
alf=asso/pl/1000/hours;
printf("\t Annual loadfactor = %.2f %% \n\n", alf*100);
apcf=asso/sc/1000/8760;
printf("\t Annual plan capacity factor = %.2f %% \n\n", apcf*100);

printf("Base load station\n\n");
alf_base=ablso/bl/1000/8760;
printf("Annual load factor = %.2f %% \n\n", alf_base*100);