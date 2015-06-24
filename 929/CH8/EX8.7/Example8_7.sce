//Example 8.7

clear;

clc;

PM=45;

anganewjfx=-180+PM;

a0=3600;

f1=1*10^6;

f2=4*10^6;

f3=40*10^6;

angajfx=anganewjfx+90;

fx=683*10^3;

ajf=a0/((1+(%i*(fx/f1)))*(1+(%i*(fx/f2)))*(1+(%i*(fx/f3))));

ang=(180/%pi)*atan(imag(ajf)/real(ajf));

mag=abs(ajf);

fd=sqrt((fx^2)/((mag^2)-1));

printf("fd=%.f Hz",fd);