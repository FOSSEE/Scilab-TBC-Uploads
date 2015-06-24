//Bilinear design of second order filters
s=%s;z=%z;
f1=4;f2=9;
delf=f2-f1;S=25;
B=cos(%pi*(f1+f2)/25)/cos(%pi*(f2-f1)/25)
C=tan(%pi*delf/25)
HS=1/(s+1);
HZ=horner(HS,(z^2-(2*B*z)+1)/(C*(z^2)-C))
f=0:0.5:12.5;
HZ1=horner(HZ,exp(%i*2*%pi*f'/25));
HZ1=abs(HZ1);
fo=S*acos(B)/(2*%pi)
f3=[f1 fo f2]; 
HZf=abs(horner(HZ,exp(-%i*2*%pi*f3'/25)));
a=gca();
a.x_location="origin";
plot2d(f,HZ1);
plot2d3('gnn',f3,HZf);
xlabel('Analog Frequency f[kHZ]');
ylabel('Magnitude');
xtitle('Band pass filter f1=4kHZ,f2=9kHZ');
