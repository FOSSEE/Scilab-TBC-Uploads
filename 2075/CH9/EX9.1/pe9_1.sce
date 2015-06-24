//example 9.1
clc;funcprot(0);
//Initialization of Variable
V=28;//V
C=4700;//microF
R=16;//load
f=120;//hertz
//calculation
Vp=V*2^.5-2;
disp(Vp,"peak voltage in V:")
Vd=.95*Vp;
disp(Vd,"load voltage in V:")
Id=Vd/R;
v=Id/f/C;
disp(v*1e6,"ripple voltage in V:")
//approximation
Vd=Vp-v*1e6/2;
disp(Vd,"approx. load voltage in V:")
clear()
