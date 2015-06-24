// page no.26
//exa no.2.3b
t=[-3:.0082:1];
m1=(0-1)/(-3-(-1));//slope for -3<t<-1
c1=(0-m1*(-3));//intercept for pt(-3,0)
u(t<=-1)=[(m1*t(t<=-1))+c1]'
m2=(1-0)/(-1-1);//slope for -1<t<1
c2=(0-m2*1)//intercept for pt(1,0)
u(t>-1)=[(m2*t(t>-1))+c2]';
subplot(221)
plot2d(t,u)//original signal
subplot(222)
plot2d(2*t,u)//expansion of signal