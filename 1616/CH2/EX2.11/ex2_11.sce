//ex2.11  find the value of R so that line is treated as lowloss line.
l=0.25e-6;
c=100e-12;
g=0;
f=100e6;
w=2*%pi*f;
b=w*sqrt(l*c);
disp('The phase constant of the low-loss line is = '+string(b));
a=b/100;
r=a*sqrt(l/c)*2;
disp('the value of resistance should be = '+string(r)+' ohm/m');

