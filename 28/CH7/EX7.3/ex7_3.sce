s=%s;
syms k
H=syslin('c',1+(k/(s*(s+1)*(s+2))))
evans(H,5)
d=derivat(H)
p=numer(d)
a=roots(p)  // a=breakaway point
disp(a,"breakaway ppoint=")

 