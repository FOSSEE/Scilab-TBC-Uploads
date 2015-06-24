clear;
clc;
l=300;
h1=80;
h2=50;
w=8.28;
T=19620;

//(a)
lc=l+ (2*T * (h1-h2)/(w*l));
dOC=(lc/2)-l;
hOC=w*dOC*dOC/(2*T);
dOP=dOC + (l/2);
hOP=w*dOP*dOP/(2*T);
hPC=hOP-hOC;
hP=hPC+ h2;
mprintf("\nHeight of mid point P above C =%.3f m",hPC);
mprintf("\nHeight of mid point P above water level =%.3f m",hP);
