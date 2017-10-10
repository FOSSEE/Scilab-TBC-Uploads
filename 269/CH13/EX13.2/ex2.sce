s=poly(0,'s')
F=syslin('c',1/(3*s+1))
y=evans(F)
disp(y)