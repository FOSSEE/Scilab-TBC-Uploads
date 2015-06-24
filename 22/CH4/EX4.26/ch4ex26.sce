s=poly(0,'s')
h=syslin('c',((10*s+1000)/(s^2+2*s+100)))
clf();bode(h,0.1,100);