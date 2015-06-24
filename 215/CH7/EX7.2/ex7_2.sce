clc
t = 0:0.000001:0.002; 
deff('y=u(t)','y=1*(t>=0)');
y =0.02*(u(t) - u(t-0.002));
figure
a=gca()
subplot(111)
plot2d(t,y,5,rect=[0 0 0.004 0.03])
xtitle('i vs t','t in ms','i in mA')

syms s
//For t<=0 ms
v=0
//For the region in the rectangular pulse i.e 0<t<=2 ms
v=integ(s^0,s)*4000
//For t>2 ms
v=8
s=0:0.000001:0.002

figure
a=gca()
subplot(111)
plot(s,(4000*s),s+0.002,8)
xtitle('v vs t','t in ms','v in V')
