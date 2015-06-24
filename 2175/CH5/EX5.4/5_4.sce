clc;
bore=5;//cm
stroke=7.5;//cm
V=(%pi/4)*5^2*7.5
V0=21.3;
tV=V+V0;

rv=tV/V0;

y=1.4;
eta=1-[rv^(1-y)];
disp("efficiency is:");
disp("%",eta*100)
