//Ex 4.4
clc;clear;close;
format('v',7);
Vc=10;//times of Vp
RL=10;//ohm
m=1;//modulation coefficient
Pc=Vc^2/2/RL;//W
Pusb=m^2*Pc/4;//W
Plsb=m^2*Pc/4;//W
disp("Part(a)");
disp(Pc,"Carrier power(W)");
disp(Pusb,"Upper side band power(W)");
disp(Plsb,"Lower side band power(W)");
disp("Part(b)");
Psbt=m^2*Pc/2;//W
disp(Psbt,"Total side band power(W)");
disp("Part(c)");
Pt=Pc*(1+m^2/2);//W
disp(Pt,"Total power of modulated wave(W)");
disp("Part(e)");
m=0.5;//modulation coefficient
Pusb=m^2*Pc/4;//W
Plsb=m^2*Pc/4;//W
disp(Pc,"Carrier power(W)");
disp(Pusb,"Upper side band power(W)");
disp(Plsb,"Lower side band power(W)");
Psbt=m^2*Pc/2;//W
disp(Psbt,"Total side band power(W)");
Pt=Pc*(1+m^2/2);//W
disp(Pt,"Total power of modulated wave(W)");
