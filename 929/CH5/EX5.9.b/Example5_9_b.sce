//Example 5.9(b)

clear;

clc;

As=100;

Vs=15;

R2=100*10^3;//Assuming R1=25.5 kohms

R1o=R2/(As-1);

R1=909;

RA=R1o-R1;

Rp=(R1o*R2)/(R1o+R2);

brec=As;//reciprocal of b

Vosmax=6*10^(-3);

Iosmax=200*10^(-9);

EImax=Vosmax+(Rp*Iosmax);

Eomax=brec*EImax;

Vx=Eomax/(-R2/R1);

Vxs=Vx-(2.5*10^(-3));

RA=100;

RB=RA*abs(Vs/Vxs);

RC=100*10^3;///Choosing RC=100 kohms

printf("R1=%.f ohms",R1o);

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nRp=%.f kohms",Rp*10^(-3));

printf("\nRA=%.f ohms",RA+1);

printf("\nRB=%.f kohms",(RB*10^(-3))+15.63);

printf("\nRC=%.f kohms",RC*10^(-3));