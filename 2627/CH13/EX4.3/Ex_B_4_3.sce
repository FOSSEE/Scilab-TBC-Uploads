//Ex 4.3
clc;clear;close;
format('v',6);
fc=1;//MHz
fm=5;//kHz
m=60/100;//Modulation
Pc=6;//kW
RL=50;//W
Pavg=Pc*(1+m^2/2);//kW(Average power delivered to load)
disp("Part(a)");
disp(Pavg,"Average power of modulated signal(kW)");
PdB=10*log10(Pavg*1000);//dB
disp(PdB,"Average power of modulated signal(dB)");
PdBm=10*log10(Pavg*10^6);//dBm
disp(PdBm,"Average power of modulated signal(dBm)");
disp("Part(b)");
VS_RMS=sqrt(2*RL*Pavg*1000)/1000;//kV
disp(VS_RMS,"RMS voltage of modulated signal(kV)");
Vp=sqrt(2)*VS_RMS;//V
disp(Vp,"Peak value of modulated signal(kV)");
//Answer is wrong in the book.
