
//Example 7.10

clear;

clc;

z0=710*10^3;

fb=350*10^3;

rn=50;

enw=2.4*10^(-9);

fce=50*10^3;

inpw=3.8*10^(-12);

fcip=100*10^3;

innw=20*10^(-12);

fcin=100*10^3;

R1=166.7;

R2=1.5*10^3;

R3=100;//internal resistance

fL=0.1;

Rp=(R1*R2)/(R1+R2);

ft=(z0*fb)/R2;

fB=ft/[1+(rn/((R1*R2)/(R1+R2)))];

Ano=1+(R2/R1);

Enoe=enw*sqrt([{fce*log(fB/fL)}+{1.57*fB}-fL]);

Enoi=R3*inpw*sqrt(((fcip*log(fB/fL))+(1.57*fB)-fL));

Enop=Rp*innw*sqrt({(fcin*log(fB/fL))+(1.57*fB)-fL});

k=1.38*10^(-23);

T=25+273;//Room temperature in Kelvin

EnoR=[{(4*k*T)*(R3+Rp)*((1.57*fB)-fL)}^(1/2)];

Eno=Ano*sqrt((Enoe^2)+(Enoi^2)+(EnoR^2)+(Enop^2));

c=6.6*10^3;

Eno1=Eno*c;

printf("RMS Noise Voltage (Eno)=%.2f uV",Eno*10^6);//answer in textbook is wrong

printf("\nPeak to Peak Noise Voltage (Eno)=%.2f mV",Eno1);//answer in textbook is wrong