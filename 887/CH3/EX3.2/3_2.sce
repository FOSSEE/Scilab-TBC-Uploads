clc
//ex3.2
C=0.1*10^-6;
//symbolic integration cannot be done in scilab
t=[0:0.001*10^-3:3*%pi*10^-4];
i=0.5*sin((10^4)*t);
//on integrating 'i' w.r.t t
q=0.5*10^-4*(1-cos(10^4*t));
C=10^-7;
V=q/C;
subplot(221)
plot(t,q*10^6)
xtitle('charge vs time','time in seconds','charge in Mc')      //Mc=micro coulombs(10^-6)
subplot(222)
plot(t,i)
xtitle('current vs time','time in seconds','current in amperes')      //Mc=micro coulombs(10^-6)
subplot(223)
xtitle('voltage vs time','time in seconds','voltage in volts')
plot(t,V)
