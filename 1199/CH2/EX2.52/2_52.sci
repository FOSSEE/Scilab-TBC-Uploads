//2.52
clc;
Kq=40*10^-3;
Cp=1000*10^-12;
K=Kq/Cp;
printf(" Sensitivity of the transducer=%.2f V/m",K)
Cc=300*10^-12;
Ca=50*10^-12;
C=Cp+Cc+Ca;
Hf=Kq/C;
printf("\n High frequency sensitivity =%.2f V/m",Hf)
R=1*10^6;
tc=R*C;
M=0.95;
w=(1/tc)*[(M^2)/(1-M^2)]^0.5;
f=w/(2*%pi);
printf("\n Minimum frequency=%.2f sec",f)
disp('now f=10Hz')
f=10;
w=2*%pi*f;
tc=(1/w)*[(M^2)/(1-M^2)]^0.5;
C_new=tc/R;
Ce=(C_new-C)*10^6;
printf("\n External shunt capacitance=%.2f pF",Ce)
Hf_new=Kq/C_new;
printf("\n new value of high frequency sensitivity=%.2f V/m",Hf_new)

