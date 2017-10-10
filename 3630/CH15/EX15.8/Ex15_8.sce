clc;
Rf=100000;
Rin=10000;
AcL=(Rf/Rin)+1;
Acm=0.001;
CMRR=AcL/Acm;
Vin=1;
Vout=AcL*Vin;
slewrate=500000;
Vpk=5.5;
fmax=slewrate/(2*3.14*Vpk);
disp(' ',AcL,"AcL=");//The answers vary due to round off error

disp(' ',CMRR,"CMRR=");//The answers vary due to round off error

disp('Vpp',Vout,"Vout=");//The answers vary due to round off error

disp('kHz',fmax/1000,"fmax=");//The answers vary due to round off error






