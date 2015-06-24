//Example 12.6
//Local Strain method
//Page No. 424
clc;clear;close;

funcprot(0);
K=189;              //in ksi
n=0.12;             //no unit
ef=1.06;             //no unit
sigma_f=190;          //in ksi
b=-0.08;              //no unit
c=-0.66;           //no unit
E=30*10^6;           //in psi
E=E/1000;        //conversion to ksi\
s=200;            //in ksi
sigma_m=167;         //in ksi
sigma_a=17;            //in ksi
se=s^2/E;
deff('y=f(ds)','y=(ds^2)/(2*E)+(ds^((1+n)/n))/(2*K)^(1/n)-se/2');
[ds,v,info]=fsolve(0,f);
de=se/ds;
deff('y=f1(N2)','y=N2^-b*(sigma_f/E)+ef*N2^-c-de/2');
[N2,v,info]=fsolve(0,f1);
N2=1/N2;
N_1=N2/2;
de_e2=sigma_a/E;
deff('y=f2(N2)','y=N2^-b*((sigma_f-sigma_m)/E)+ef*N2^-c-de_e2');
[N2,v,info]=fsolve(0,f2);
N2=1/N2;
N_2=N2/2;
C_pd=2*60*60*8;
f=N_2/C_pd;
printf('\nNumber of cycles = %g cycles\nFatigue damage per cycle = %g\nNumber of cycles with correction of mean stress= %g cycles\nFatigue damage per cycle  with correction of mean stress= %g damage per year\nShaft will fail in %g days',N_1,1/N_1,N_2,1/N_2,f);
