clear;
clc;
//Example 8.9
Iso=3*10^-14;
Isq=10^-13;
b=75;
Vt=0.026;
Rl=8;
P=5;
Vp=sqrt(2*Rl*P);
printf('\npeak voltage Vp=%.2f V\n',Vp)
Vcc=Vp/0.8;
printf('\nsupply voltage=%.2f V\n',Vcc)
Ien=Vp/Rl;
printf('\nemitter current=%.3f A\n',Ien)
Ibn=Ien/(1+b);
Ibn=Ibn*1000;//mA
printf('\nbase current=%.2f mA\n',Ibn)
iD=0.020;
Vbb=2*Vt*log(iD/Iso);
printf('\nVbb=%.2f V\n',Vbb)
Icq=Isq*exp((Vbb/2)/Vt);
Icq=Icq*1000;//mA
printf('\nquiescent collector current=%.3f mA\n',Icq)
Ibias=20;//mA
iD=Ibias-Ibn;
printf('\ndrain current=%.3f mA\n',iD)
iD=iD*0.001;//A
Vbb=2*Vt*log(iD/Iso);
printf('\nVbb=%.2f V\n',Vbb)
Icn=1.12;
Vben=Vt*log(Icn/Isq);
printf('\nB-E voltage of Qn=%.2f V\n',Vben)
Vebp=Vbb-Vben;
printf('\nemitter base voltage of Qp=%.2f V\n',Vebp)
Icp=Isq*exp(Vebp/Vt);
Icp=Icp*1000;//mA
printf('\nIcp=%f mA\n',Icp)
