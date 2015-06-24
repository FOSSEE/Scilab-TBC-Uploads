clear;
clc;
R1=175;R2=350;
y=poly([1 -3 1],"N","coeff");
f=roots(y);
N=f(1,1);
D=20*log10(N);
Ro=R1*(N+1)/(N-1);
printf("The characteristic impedance of T attenuator = %f ohms and its attenuation per section is %f db",round(Ro*10)/10,round(D*100)/100);

