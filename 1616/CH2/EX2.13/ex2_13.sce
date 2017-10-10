//to find VSWR and max and min resistance 
r=100;
c=1e-9;
f=2e6;
w=2*%pi*f;
zl=r/(1+(w*%i*r*c));//(r*(1/%i*w*c))/(r+(1/%i*w*c));
zo=50;
tl=(zl-zo)/(zl+zo);
Tl=abs(tl);
VSWR=(1+Tl)/(1-Tl);
disp('The VSWR = '+string(VSWR));
rmax=VSWR*zo;
rmin=zo/VSWR;
disp('maximum resistance on line is = '+string(rmax)+' kohm','minimum resistance on line is = '+string(rmin)+' kohm');