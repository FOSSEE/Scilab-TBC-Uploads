//ex2.4  from the previous ex.calculate attenuation const. and peak voltage
y=complex(2.23,28.2);
a=real(y);
x1=0;
t1=0;
vt=8.66;
o=%pi/6;
disp('At x=0 and t=0, it is given that vt = 8.66 V.');
V=vt/cosd(30);

x2=1;
t=100e-9;
f=1e9;
w=2*%pi*f;
B=imag(y);
vt1=10*exp(-a*x2)*cos(o+w*t-B*x);
disp('The instantaneous voltage at x= 1m and t =100nsec is = '+string(vt1)+' V');
pv=V*exp(-a*x2);
disp('the peak voltage at x = 1m is = '+string(pv)+' V');

