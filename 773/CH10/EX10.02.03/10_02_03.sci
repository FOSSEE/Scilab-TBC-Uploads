//equation//
s = poly(0, "s");
G=syslin('c',2/(s^2+2*s))
H=syslin('c',1/s);
//characteristic equation is 1+G(s)H(s)=0
y=1+G*H
r=numer(y)
disp('=0',r,"characteristics equation is")   
