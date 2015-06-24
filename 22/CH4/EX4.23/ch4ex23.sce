s=poly(0,'s')
h=syslin('c',(s+0.1)/(s+5))
clf();bode(h,0.1,100);