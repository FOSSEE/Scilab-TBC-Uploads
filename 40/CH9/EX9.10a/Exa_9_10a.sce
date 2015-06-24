//Bilinear design of second order filters
s=%s;z=%z;
fo=6;Wo=2*%pi*fo/25;
delf=5;S=25;
B=cos(2*%pi*fo/25)
C=tan(%pi*delf/25)
HS=1/(s+1);
HZ=horner(HS,(z^2-(2*B*z)+1)/(C*(z^2)-C))
f=0:0.5:12.5;
HZ1=horner(HZ,exp(%i*2*%pi*f'/25));
HZ1=abs(HZ1);
W2=(%pi*delf/25)+acos(cos(Wo)*cos(%pi*delf/25))
W1=W2-(2*%pi*delf/25)
f1=S*W1/(2*%pi),f2=S*W2/(2*%pi)
f3=[f1;fo;f2];
HZf=abs(horner(HZ,exp(%i*2*%pi*f3'/25)));
a=gca();
a.x_location="origin";
plot2d(f,HZ1,rect=[0 0 13 1]);
plot2d3('gnn',f3,HZf);
xlabel('Analog Frequency f[kHZ]');
ylabel('Magnitude');
xtitle('Band pass filter fo=6kHZ,delf=5kHZ');
