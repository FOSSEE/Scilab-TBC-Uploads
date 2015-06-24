//Response in variant mappings
s=%s;z=%z;
HS=1/(s+1);
f=0:0.05:0.5;
HS1=horner(HS,(%i*%pi*2*f'));
ts=1;
HZ=z/(z-0.3679);
HZ1=horner(HZ,exp(%i*%pi*2*f'));
a=gca();
a.x_location="origin";
subplot(211)
plot2d(f,HS1);
plot2d(f,HZ1);
xlabel('Analog frequency f(Hz)');
ylabel('Magnitude');
xtitle('magnitude of H(s) and H(z)');
HZ1=HZ1-0.582;//magnitude after gain matching at dc 
b=gca();
b.x_location="origin";
subplot(212);
plot2d(f,HS1);
plot2d(f,HZ1);
xlabel('Analog frequency f(Hz)');
ylabel('Magnitude');
xtitle('magnitude after gain matching at DC');
//Impulse response of analog and digital filter
t=0:0.01:6;
ht=exp(-t');
n=0:6;
hn=exp(-n');
xset('window',1)
c=gca();
subplot(211);
plot2d(t,ht);
plot2d3('gnn',n,hn);
xlabel('DT index n and time t=nts');
ylabel('Amplitude');
xtitle('Impulse response of analog and digital filter');
//Step response of analog and digital filter
t=0:0.01:6;
st=1-exp(-t');
n=0:6;
sn=(%e-%e^(-n'))/(%e-1);
c=gca();
subplot(212);
plot2d(t,st);
plot2d3('gnn',n,sn);
xlabel('DT index n and time t=nts');
ylabel('Amplitude');
xtitle('Step response of analog and digital filter');



