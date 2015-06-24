//Chapter 5
//Example 5_11
//Page 96

clear;clc;

fc=150;
rc=0.08;
lf=0.3;
pf1=1;
pf2=0.7;

md1=fc*100/8760/lf/pf1;
oc1=md1+rc*100;
printf("(i) When power factor is unity\n ");
printf("    MAx demand charge per unit = %.2f paise \n", md1);
printf("    Energy charge per unit = %.0f paise \n", rc*100);
printf("    Overall cost per unit = %.2f paise \n\n", oc1);

md2=fc*100/8760/lf/pf2;
oc2=md2+rc*100;
printf("(i) When power factor is unity\n ");
printf("    MAx demand charge per unit = %.2f paise \n", md2);
printf("    Energy charge per unit = %.0f paise \n", rc*100);
printf("    Overall cost per unit = %.2f paise \n\n", oc2);
