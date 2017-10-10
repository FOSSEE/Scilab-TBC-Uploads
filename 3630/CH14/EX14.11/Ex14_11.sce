clc;
Avmid=45;
fC1=2000;
f=500;
deltaAv=20*log10(1/(1+(fC1/f)^2)^0.5);
AvdB=Avmid+deltaAv;
disp('dB',AvdB,"AvdB=")//The answers vary due to round off error
