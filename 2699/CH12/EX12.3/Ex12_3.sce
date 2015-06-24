//EX12_3 Pg-12.17
clc
clear
fm=5e3;//assume modulation frequency f=5kHz
fc=1080e3;//assume carrier frequency f=1080kHz
time=0:2.3148e-7:8e-4;
//Waveform of modulated signal for m=0.75
m1=0.75;//modulation index
VmbyVc=m1
Vm=1;//we assume modulation voltage=1V
Vc=Vm/m1;//carrier voltage
k=VmbyVc;//modulation index = Vm/Vc
printf("\n for modulation index m=0.75 Vc=%.2f V",Vc)

xset('window',1)
mt=k*sin(2*%pi*fm*time);
sam=Vc*(1+mt).*sin(2*%pi*fc*time);
plot(time(1:1500),sam(1:1500));
title(' Waveform of modulated signal m=0.75');
xlabel('Time (sec)');
ylabel('Amplitude (Vc=1.33V)');
xgrid(color("gray"));

//Waveform of modulated signal for m=1
m1=1;
VmbyVc=m1
Vm=1;//we assume modulation voltage=1V
Vc=Vm/m1;//carrier voltage
k=VmbyVc;//modulation index = Vm/Vc
printf("\n for modulation index m=1    Vc=%.2f V",Vc)

xset('window',2)
mt=k*sin(2*%pi*fm*time);
sam=Vc*(1+mt).*sin(2*%pi*fc*time);
plot(time(1:1500),sam(1:1500));
title(' Waveform of modulated signal m=1');
xlabel('Time (sec)');
ylabel('Amplitude (Vc=1V)');
xgrid(color("gray"));

//Waveform for modulated signal for m=1.25
m1=1.25;
VmbyVc=m1
Vm=1;//we assume modulation voltage=1V
Vc=Vm/m1;//carrier voltage
k=VmbyVc;//modulation index = Vm/Vc
printf("\n for modulation index m=1.25 Vc=%.2f V",Vc)

xset('window',3)
mt=k*sin(2*%pi*fm*time);
sam=Vc*(1+mt).*sin(2*%pi*fc*time);
plot(time(1:1500),sam(1:1500));
title(' Waveform of modulated signal m=1.25');
xlabel('Time (sec)');
ylabel('Amplitude (Vc=0.8V)');
xgrid(color("gray"));

