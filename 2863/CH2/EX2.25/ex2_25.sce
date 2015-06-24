//chapter 2
//R=l*sqrt(pi*F*Uo*Sigma)/Sigma*2*pi*r
printf("\n");
L=2;
r=1*10^-3;
f=2*10^6;
u=4*(%pi)*10^-7;
sig=5.7*10^6;
R=sqrt((%pi)*2*10^6*4*(%pi)*10^-7/(5.7*10^6))*L/(2*(%pi)*10^-3);
printf("the resistance of hertzian dipole is %gohm",R);
dl=2
frequency=2*10^6;
lamda=3*10^8/(frequency);
Rrad=80*(%pi)^2*(dl/lamda)^2;
n=Rrad/(Rrad+R);
printf("\nthe radiation efficiency is %gohm",n);
