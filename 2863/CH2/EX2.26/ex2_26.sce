//chapter 2
//half wave dipole
printf("\n");
dl=1/15;//assume lamda=1;
Rloss=1.5;
Rrad=80*(%pi)^2*(1/15)^2;
n=Rrad/(Rrad+Rloss);
printf("the radiation efficiency is %g",n);
