s=poly(0,'s')
h=syslin('c',((20*s^2+2000*s)/(s^2+12*s+20)))
clf();bode(h,0.1,100);