//problem 22 pagenumber 2.105
//given
rc1=1;format(3);clf();
vi=5;//volt
c=1e-6;//farad
r=1e6;//ohm
x0=0;x1=1:1:5;
//determine output voltage
v0=integrate('5','t',x0,x1);
disp('Output voltage = -'+string(v0(5))+" V");
subplot(1,2,1);
x=linspace(1,5,5);
y=5* ones(length(x),1);
plot(x,y);
xtitle('input waveform problem Ex2_22','time in sec','Vi in volts');
subplot(1,2,2);
x=linspace(1,5,5);
y=linspace(0,-25,5);
plot(x,y);
xtitle('output waveform problem Ex2_22','time in sec','V0 in volts');