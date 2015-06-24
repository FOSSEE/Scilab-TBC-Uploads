clc;
clear;
for x1=0:8
    x21(x1+1)=-(7/11)*x1+7;
    x22(x1+1)=(80-10*x1)/8;
    x23(x1+1)=6;
    x24(x1+1)=-150*x1/175;
    x25(x1+1)=(600-150*x1)/175;
    x26(x1+1)=(1400-150*x1)/175;
end
x1=0:8;

plot(x1,x24,'o-')
plot(x1,x25,'.-')
plot(x1,x26,'x-')
h1=legend(['Z=0';'Z=600';'Z=1400'])
plot(x1,x21);
plot(x1,x22);
plot(x1,x23);
xtitle('x2 vs x1','x1 (tonnes)','x2 (tonnes)')

