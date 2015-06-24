//Introductory Topics :example 1-7 : (pg no. 21 & 22)
BW=200*10^3;
k=(1.38*10^-23);
T=(273+22);//converting degrees C into kelvin
R=(10*10^3);
R1=300;
NF1=3;
NF2=8;
NR1=2;
NR2=6.31;
df=((%pi/2)*BW);
Pn=(k*T*df);
en=sqrt(4*Pn*R);
x=(14+20+20);//sum of the power gain of the three stages
y=(x/10);
Pg=(10^y);
Po=(Pn*Pg);
eno=sqrt(Po*R1);
pg1=(10^(1.4));
pg2=(10^(20));
NR=(NR1+((NR2-1)/pg1)+((NR2-1)/(pg1*pg2)));
NF=10*log10(NR);
No=(NR*Pn*Pg);
a=sqrt(No*R1);
//part(a)
printf("\ndelta(f)= (pi/2)*BW = %.f Hz",df);//effective noise bandwidth
printf("\nPn = k.T.delta(f) = %.17f W",Pn);// at the input
printf("\nen=sqrt(4.k.T.delta(f).R) = %.8f V",en);//Voltage
printf("\nTpg = 14dB+20dB+20dB = %.f dB",x);//total power gain in decibels
printf("\n54dB = 10logPG \nPG = %.f",Pg);//total power gain
printf("\nPn(out) = Pn(in).PG = %.12f W",Po);//assuming perfect noiseless amplifiers
printf("\nen(out)= %.6f V",eno);//output driven by 300 Ohm load & P=V^2/R
//part(b)
printf("\nPG1=14dB = 25.1 \nPG2=PG3= 20dB =100 \nNF1= 3dB \nNR1=2 \nNF2=NF3=8dB \nNR2=NR3=6.31");
printf("\nNR=NR1+(NR2-1/PG1)+....+(NRn-1/PG1.PG2...PG(n-1))");//friiss's formula
printf("\nNR = %.3f",NR);//noise ratio
printf("\nNF = %.2f dB",NF);//noise figure
//part(c)
printf("\nNR = (Si/Ni)/(So/No) \nPG = %.1f*10^5",pg1);
printf("\nNR = No/(Ni*PG) \nNo = %.12f W",No);
printf("\nNo = (en^2)/R \nen= %.6f V",a);//outputnoise voltage
