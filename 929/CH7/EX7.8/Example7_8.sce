//Example 7.8

clear;

clc;

R1=100*10^3;

R2=200*10^3;

R3=68*10^3;

enw=20*10^(-9);

fce=200;

ft=1*10^6;

inw=0.5*10^(-12);

fci=2*10^3;

Rp=(R1*R2)/(R1+R2);

Ano=1+(R2/R1);

fB=ft/Ano;

fL=0.1;

Enoeold=Ano*enw*sqrt([{fce*log(fB/fL)}+{1.57*fB}-fL]);

Enoiold=Ano*[{(R3^2)+(Rp^2)}^(1/2)]*inw*([(fci*log(fB/fL))+(1.57*fB)]^(1/2));

k=1.38*10^(-23);

T=25+273;//Room temperature in Kelvin

EnoRold=Ano*[{(4*k*T)*(R3+Rp)*1.57*fB}^(1/2)];

Enoold=sqrt((Enoeold^2)+(Enoiold^2)+(EnoRold^2));

Enonew=50*10^(-6);//New Value of Eno mentioned in problem

Enoisum=(Enonew^2)-(Enoeold^2);//sum of (Enoi^2) and (EnoR^2)

Enoinewsq=(Ano^2)*(inw^2)*[(fci*log(fB/fL))+(1.57*fB)];//(Enoinew^2)/(R^2)

EnoRnewsq=(Ano^2)*((4*k*T)*1.57*fB);

r=poly(0,'x');

p=(Enoinewsq*(r^2))+(EnoRnewsq*r)-Enoisum;

[r1]=roots(p);

R=r1(2,1)

R3new=R/2;

R1new=(3*R3new)/2;

R2new=2*R1new;

printf("Resistances after scaling are :");

printf("\nR1=%.2f kohms",R1new*10^(-3));

printf("\nR2=%.1f kohms",R2new*10^(-3));

printf("\nR3=%.1f kohms",R3new*10^(-3));