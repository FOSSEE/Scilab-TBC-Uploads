//Example 7.13

clear;

clc;

C1=2*10^(-9);

binfrec=4000;

inw=0.566*10^(-15);

T=1*10^(9);

ft=16*10^6;

R1=100*10^(9);

C2=0.5*10^(-12);

fx=(1/binfrec)*ft;

enw=4.5*10^(-9);

Enoe=binfrec*enw*sqrt((%pi*fx)/2);

EnoRmax=Enoe/3;

k=1.38*10^(-23);

Temp=25+273;

ex=((EnoRmax^2)*C2)/(k*Temp);

R2=T/ex;

R3=1*10^3;//Assumed

R4=(ex-1)*R3;

printf("(a) Designed T Network :");

printf("\n    R1=%.2f Gohms",R1*10^(-9));

printf("\n    R2=%.1f Mohms",R2*10^(-6));

printf("\n    R3=%.2f kohms",R3*10^(-3));

printf("\n    R4=%.2f kohms",R4*10^(-3));

printf("\n    C1=%.2f nF",C1*10^9);

printf("\n    C2=%.2f pF",C2*10^12);

fp=1/(2*%pi*ex*R2*C2);

fB=fp;

Rp=(R1*R2)/(R1+R2);

Enoi=((1.57*fB)^(1/2))*inw;

Eno=sqrt((Enoe^2)+(Enoi^2)+(EnoRmax^2));

printf("\n\n(b) Total rms Output Noise=%.2f mV",Eno*10^3);

printf("\n    Bandwidth(fB)=%.d Hz",fB);