s=poly(0,'s')
h=syslin('c',(s^2/s))
clf();bode(h,0.1,100);
h1=syslin('c',(1/s))
clf(); bode(h1,0.1,100);