//Example 16.3.
clc
format(6)
amp = 15;
vi_t=3; // transition voltage
t=0:0.1:2*%pi;
vi=amp*sin(t);
vo=vi+3; // output voltage
disp (vi_t,'transition voltage:');
for i=1:length(t)
if(vo(i)<=0)
vo(i)=0;
end
end
subplot(2,2,1)
plot2d1(t,vo,2,'011','',[0,0,7,18]);
xtitle('Ouptut voltage in sin wave','t','vo');


t=0:0.1:20;
for i=1:int(length(t)/2)
vo(i)=15+3;
end
for i=int(length(t)/2):length(t)
vo(i)=0;
end
subplot(2,2,2)
plot2d2(t,vo,2,'011','',[0,-5,21,20]);
a = gca ();
xtitle('Ouptut voltage in square wave','t','vo');