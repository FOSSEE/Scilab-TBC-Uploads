//caption:nicholas_chart
//example 11_32
//page 507
s=%s;
num=20;
den=(s*(s+2)*(s+5))
g=num/den
G=syslin('c',g)
fmin=0.01
fmax=100
black(G,fmin,fmax)
xgrid(2)
