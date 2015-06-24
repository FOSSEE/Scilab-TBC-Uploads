//(a)Impulse invariant design
s=%s;z=%z;
HS=1/(s+1);
H1s=horner(HS,3*s/%pi)
H1z=%pi/3*z/(z-%e^(-%pi/3))
//Modified inmpulse invariant design
HZ=z/(z-1/%e);
HMZ=0.5*(z+1/%e)/(z-1/%e);//modified transfer function
H1Z=HZ/horner(HZ,1)
HM1Z=HMZ/horner(HMZ,1)
f=0:0.05:0.5;
HZ1=horner(HZ,exp(%i*2*%pi*f'));
HMZ1=horner(HMZ,exp(%i*2*%pi*f'));
H1Z1=horner(H1Z,exp(%i*2*%pi*f'));
HM1Z1=horner(HM1Z,exp(%i*2*%pi*f'));
a=gca();
a.x_location="origin";
plot2d(f,HZ1);
plot2d(f,HMZ1);
plot2d(f,H1Z1);
plot2d(f,HM1Z1);
xlabel('digital frequency');
ylabel('Magnitude');
xtitle('Impulse invariant design of H(s)=1/s+1 (dashed)');