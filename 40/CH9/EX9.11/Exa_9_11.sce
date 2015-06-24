//interference Rejection
//design oh high-Q and low-Q notch filters
s=%s;z=%z;
Q=50;
fo=60;S=300;
delf=fo/Q;
Wo=2*%pi*fo/S;
delW=2*%pi*delf/S;
C=tan(0.5*delW),B=cos(Wo)
HS=(s)/(s+1);
H1Z=horner(HS,(z^2-(2*B*z)+1)/(C*(z^2)-C))
Q1=5;delf1=fo/Q1;
delW1=2*%pi*delf1/S;
C1=tan(0.5*delW1),B1=cos(Wo)
H2Z=horner(HS,(z^2-(2*B1*z)+1)/(C1*(z^2)-C1))
f=0:0.5:150;
H1Z1=horner(H1Z,exp(%i*2*%pi*f'/S));
H2Z1=horner(H2Z,exp(%i*2*%pi*f'/S));
a=gca();
subplot(211);
plot2d(f,H1Z1);
xlabel('Analog Frequency f[Hz]');
ylabel('Magnitude');
xtitle('60 HZ notch filter with Q=50');
subplot(212);
plot2d(f,H2Z1);
xlabel('Analog Frequency f[Hz]');
ylabel('Magnitude');
xtitle('60 HZ notch filter with Q=5');

