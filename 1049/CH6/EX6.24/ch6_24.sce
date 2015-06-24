clear;
clc;
I=10;
a=45;
V=400;
f=50;
DF=cosd(a);
printf("DF=%.3f",DF);
I_o=10;
I_s1=4*I_o/(sqrt(2)*%pi)*sin(%pi/3);
I_sr=I_o*sqrt(2/3);
I_o=1;    //suppose
CDF=I_s1/I_sr;    printf("\nCDF=%.3f",CDF);
THD=sqrt(1/CDF^2-1);    printf("\nTHD=%.5f",THD);
pf=CDF*DF;    printf("\nPF=%.4f",pf);
P=(3*sqrt(2)*V*cosd(a)/%pi)*I;    printf("\nactive power=%.2f W",P);
Q=(3*sqrt(2)*V*sind(a)/%pi)*I;    printf("\nreactive power=%.2f Var",Q);
