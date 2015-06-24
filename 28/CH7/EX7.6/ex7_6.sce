s=%s;
syms k
H=syslin('c',k/(s*(s+3)*(s^2+(2*s)+2)))
evans(H,10)
