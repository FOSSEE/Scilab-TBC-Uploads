clear;
clc;
L=60*(10^-3);C=0.2*(10^-6);
fc=1/(%pi*(sqrt(L*C)));
printf("(i)Cut off frequency fc for the low pass filter = %f kHz\n\n",round(fc*(10^-1))/100);
fa=1000;
Za=(sqrt(L/C))*(sqrt(1-((fa/fc)^2)));
printf(" (ii)Iterative impedance at f=1 KHz = %f ohms\n",fix(Za));
fb=5000;
Zb=(sqrt(L/C))*(sqrt(1-((fb/fc)^2)));
printf("   Iterative impedance at f=5 KHz = j(%f) ohms\n\n",fix(Zb/%i));
aa=0; //attenuation at frequency fa
ba=2*(asind(fa/fc)); //phase shift at frequency fa
ab=2*acosh(fb/fc); //attenuation at frequency fb
bb=180; //attenuation at frequency fb
V1=exp(aa); //V1=(Vin/Vout) at frequency of 1kHz
V2=exp(ab); //V2=(Vin/Vout) at frequency of 5kHz
printf(" (iii)At 5kHz,the voltage ratio = %f and phase difference = %f degrees\n",round(V2*10)/10,bb);
printf("     At 1kHz,the voltage ratio = %f and phase difference = %f degrees\n",V1,fix(ba*10)/10);
