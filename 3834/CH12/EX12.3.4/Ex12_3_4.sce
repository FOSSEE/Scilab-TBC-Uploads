//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.3.4
clc;
clear ;
//given

Pis=300E-6;//input-signal power in W
Pin=30E-9;//input noise power in w
B=1E-9;//Bandwidth in m
Pos=60E-3;//output signal power in W
Pon=20E-6;// output noise  power in W

SNRin=Pis/Pin;
SNRout=Pos/Pon;

Fn=SNRin/SNRout;

mprintf("Noise figure of an optical amplifier = %.2f or %.1fdB",Fn,10*log10(Fn));
