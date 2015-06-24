clc;
close();
clear();
//page no 284
//prob no. 8.6
//All time in milli second
//All frequencies in kHz
fs=5;
tau=0.04;   //ms
T=1/fs;      //ms
d=tau/T;
// for plot
f=[-2:.1:28-.1];
Pn1=[ones(1,50)];
Pn=[Pn1];
for i=1:5
    Pn=[Pn Pn1*(1-d*i)];
end
ps1=[ones(1,20)];
for i=1:10
    ps1=[1-i*0.1 ps1 1-i*0.1];
end
ps1=[ps1 zeros(1:10)];
ps=[ps1];
for i=1:5
    ps=[ps ps1];
end
Vs=ps.*Pn;
clf;
plot2d(f,Vs,[5]);
xtitle('(a) Spectrum of signal after sampling','$f,kHz$','$Vs(f)$');
K1=0.5;
Bt=K1/tau;
mprintf('(b) Bandwidth required for K1=%i is %0.1f kHz\n',K1,Bt);
K1=1;
Bt=K1/tau;
mprintf('Bandwidth required for K1=%i is %i kHz',K1,Bt);
