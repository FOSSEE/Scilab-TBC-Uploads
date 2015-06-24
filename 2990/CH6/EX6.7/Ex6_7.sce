
clc; funcprot(0);
// Initialization of Variable
ra=88.25;//image distance of A in mm
rb=81.23;//image distance of B in mm
rc=68.14;//image distance of C in mm
H=2000.0;// in m
ha=255;//distance in m
hb=200;//distance in m
hc=145;//distance in m
f=0.1524;//focal length in m
//calculation
aa=ra*ha/H;
disp(aa,"relief distance of A in mm");
bb=rb*hb/H;
disp(bb,"relief distance of B in mm");
cc=rc*hc/H;
disp(cc,"relief distance of C in mm");
S=f/H;
disp(1/S,"scale of photograph in 1 in");
clear()
