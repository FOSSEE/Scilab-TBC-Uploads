//Ex 2.2
clc;
h=ones(1,10);
N2=0:length(h)-1;
a=0.5;//constant a>0
for t=1:10
    x(t)=exp(-a*(t-1));
end
N1=0:length(x)-1;
y=convol(x,h)-1;
N=0:length(x)+length(h)-2;

subplot(3,1,1),plot2d(N2,h)
xtitle('Impulse Response','t','h(t)');

subplot(3,1,2),plot2d(N1,x)
xtitle('Input Response','t','x(t)');


subplot(3,1,3),plot2d(N(1:10),y(1:10))
xtitle('Output Response','t','y(t)');