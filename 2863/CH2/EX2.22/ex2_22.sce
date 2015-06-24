//chapter 2
printf("\n");
dl=1/40;
Im=125;
Rloss=1;
Rrad=80*(%pi)^2*(dl)^2;
printf("the Radiation resistance is %gohm",Rrad);
Irms=Im/sqrt(2);
Prad=Rrad*(Irms)^2;
printf("\nthe Power radiated is %gW",Prad);
n=Rrad/(Rrad+Rloss);
printf("\nthe radiation efficiency is %g",n);
