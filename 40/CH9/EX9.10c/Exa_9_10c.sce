//Bilinear design of second order filters
s=%s;z=%z;
fo=40;Wo=2*%pi*fo/200;
delf=2;S=25;
delW=2*%pi*delf/200;
B=cos(2*%pi*fo/200)
K=0.557;
C=K*tan(0.5*delW)
HS=1/(s+1);
HZ=horner(HS,(z^2-(2*B*z)+1)/(C*(z^2)-C))
f=0:2:100;
f1=35:0.5:45;
HZ1=horner(HZ,exp(%i*2*%pi*f'/200));
HZ2=horner(HZ,exp(%i*2*%pi*f1'/200));
HZ1=abs(HZ1);
HZ2=abs(HZ2);
a=gca();
a.x_location="origin";
subplot(211);
plot2d(f,HZ1);
xlabel('Analog Frequency f[kHZ]');
ylabel('Magnitude');
xtitle('peaking filter fo=40HZ,delf=2HZ');
subplot(212);
plot2d(f1,HZ2);
xtitle('Blowup of response 35HZ to 45HZ');