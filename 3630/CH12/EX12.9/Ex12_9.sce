clc;
Idqmax=0.002;
Idqmin=0.0015;
Vgsmax=-5;
Vgsmin=-0.5;
Vdd=30;
R1=1500000;
R2=1500000;
Vg=Vdd*(R2/(R1+R2));
Vs=Vg-Vgsmax;
Rs=10000;
Idq1=Vs/Rs;
Idq2=(Vg-Vgsmin)/(Rs);
disp('mA',Idq1*1000,"Idq1=")
disp('mA',Idq2*1000,"Idq2=")
disp('Result Is verified', ," ")
