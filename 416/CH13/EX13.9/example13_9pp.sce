clc
clear
disp("example 13 9")
p1=30;x1=0.15;p2=10;x2=0.125;
pt=10;vs=3.3;pm=100
pb=p1 //let base as power of unit 1
x22=x2*pb/p2;x11=x1*pb/p1
xx=1/((1/x22)+(1/x11)+(1/x11))
xl=(pb/pm)-xx
xt2=xl*pt/pb
bi=vs^2/pt
xtt=xt2*bi
disp('a')
printf("reactance of transformer is %.4f.p.u \n reactance of transformer on %dMVA base is %.5fp.u. \n reactance of transformer %.4fohm",xl,pt,xl,xtt)