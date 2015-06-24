//sampling of bandpass signals
fc=4;fl=6;
B=fl-fc;
xt=[0 1 2 1];
xtt=[0 1 2];
a=0;b=1;c=2;
xta=[xt];
xtb=[0 0 2 1 0];
xtc=[0 0 0 2 1 0];
xt1=[xta xta xta]; 
xt2=[xtb xtb(length(xtb):-1:2) xtb(2:length(xtb)) xtb(length(xtb):-1:2)];
xt3=[xtc(length(xtc):-1:2) xtc(3:length(xtc)) zeros(1:7) xtc(length(xtc):-1:2) xtc(3:length(xtc))];
f1=0:length(xt1)-1;
f2=[0 1 1.001 2:6 6.001 7 7.001 8:12 12.001];
f3=[-10:-8 -7.99 -7:-6 -5.99 -5:6 6.01 7:8 8.01 9:10];
subplot(211);
plot2d(f1,xt1);
xtitle("spectrum of signal sampled at 4KHZ");
subplot(212);
plot2d(f2,xt2);
xtitle("spectrum of signal sampled at 7KHZ");
xset('window',1);
b=gca();
b.y_location="origin"
plot2d(f3,xt3);
xtitle("spectrum of signal sampled at 14KHZ");