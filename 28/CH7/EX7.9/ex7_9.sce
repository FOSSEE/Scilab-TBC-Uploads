syms K
s=%s;
G=syslin('c',(K*(s+4/3))/(s^2*(s+12)))
evans(G,60)
d=derivat(G)
p=numer(d)
a=roots(p)    // a=breakaway points
disp(a,"Breakaway points=")
printf("Equal roots are at s=-4")
printf("/n Value of K at s=-4=")
K=4*4*8/(4-(4/3))
disp(K)
