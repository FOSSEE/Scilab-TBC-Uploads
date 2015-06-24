clear;
clc;

h1=75;
h2=45;
l=300;
g=9.81;
T=2500*g;
m=.9;
w=m*g;

//(a)
lc=l+ (2*T * (h1-h2)/(w*l));
dOC=(lc/2)-l;
hCO=w * dOC *dOC / (2*T);
dOP=dOC+(l/2);
hPO=w * dOP *dOP / (2*T);

hPC=hPO-hCO;
mprintf("\nHeight of mid point P above C =%.2f m",hPC);
hP=hPC+h2;
mprintf("\nHeight of mid point P above water level =%.2f m",hP);
