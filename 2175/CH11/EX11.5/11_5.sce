clc;
Cw=115;//m/s
Cb=200;//m/s
wf=0.86;
P=(Cw*Cb*wf)/1000;
CP=12*P;
T=20+273;
y=1.4;
ET=T*6^[(y-1)/y];
cp=1.005;
sp=cp*(ET-T);
Ce=sp/CP;
disp("%",Ce*100,"compressor isintropic efficiency is:");
