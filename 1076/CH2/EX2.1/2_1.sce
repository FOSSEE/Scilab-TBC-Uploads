clear
clc;
dia=1.213;
dist=1.25*100;
f=50;
rad=dia/2;
effrad=.7788*rad;
L=4d-7 * log (dist/effrad)*1d3;
X=2*%pi*f*L;
mprintf("L=%.2f *1e-4 H/km, X=%.1f ohm/km",L*1e4, X);
