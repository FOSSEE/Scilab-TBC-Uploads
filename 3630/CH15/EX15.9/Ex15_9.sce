clc;
AcL=1;
Acm=0.001;
CMRR=AcL/Acm;
slewrate=500000;
Vpk=3;
fmax=slewrate/(2*3.14*Vpk);
disp(' ',AcL,"AcL=");//The answers vary due to round off error
disp(' ',CMRR,"CMRR=");//The answers vary due to round off error
disp('kHz',fmax/1000,"fmax=");//The answers vary due to round off error






