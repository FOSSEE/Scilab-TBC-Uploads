
clc; funcprot(0);
// Initialization of Variable
C=79.0;//in mm
ra=11.42;//elevarion in image in mm
rb=15.65;//elevarion in image in mm
hb=651;//height of B in mm
H=1500;//height in m
//calculation
delp=ra-rb;//pa=ra+c and pb=rb+c so ra-rb=pa-pb
pa=ra+C;
ha=hb+delp/pa*(H-hb);
disp(ha,"height of A in m")
clear()
