clear;
clc;
Zoc=2000*exp(%i*(-%pi/(180/80)));Zsc=20*exp(%i*(%pi/(180/20)));l=0.5;w=10000;
//value of length of cable as taken in solution
Zo=sqrt(Zoc*Zsc);
C=real(Zo);
D=imag(Zo);
printf("-Zo = %f /_ %f ohms\n",abs(Zo),atan(D,C)*180/%pi);
A=atanh(sqrt(Zsc/Zoc));
P=A/l;
a=real(P);
printf("-a = %f neper/km\n",fix(a*10000)/10000);
b=imag(P);
printf("-b = %f henry/km",round(b*10000)/10000);
