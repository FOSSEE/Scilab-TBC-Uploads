//Example 8.12

clear;

clc;

a0=10^5;

f1=10*10^3;

f2=3*10^6;

f3=30*10^6;

R1=10*10^3;

R2=100*10^3;

PM=45;

Rc=447.4;

Cc=5/(%pi*Rc*f2);

printf("(a) Rc=%.1f ohms",Rc);

printf("\n    Cc=%.3f nF",Cc*10^9);

b0rec=1+(R2/R1);

a0b0=a0*(1/b0rec);

dcge=-100/(a0b0);

printf("\n\n(b) DC Gain Error=%.3f percent",dcge);

EI=1*10^(-3);

EO=b0rec*EI;

printf("\n\n(c) DC Output Error=%.f mV",EO*10^3);

fmin3dB=f2;

printf("\n\n(d) f-3dB=%.f MHz",fmin3dB*10^(-6));

f=2.94*10^6;

T=(410*[1+(%i*(f/(0.1*f2)))])/[(1+((%i*f)/f1))*(1+((%i*f)/f2))*(1+((%i*f)/f3))*(%i*(f/(0.1*f2)))];

Tang=-(180-(180/%pi)*atan(imag(T)/real(T)));

PM1=180+Tang;

printf("\n\n(e) Actual Phase Margin=%.1f degrees",PM1);