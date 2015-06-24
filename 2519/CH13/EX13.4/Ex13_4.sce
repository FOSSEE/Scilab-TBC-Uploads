clc
clear
//Initialization of variables
p1=50 //psia
pr=0.58
//calculations
p=p1*pr
s1=1.6585
h1=1174.1 //Btu/lbm
sf=0.3680
sfg=1.3313
hfg=945.3
vg=13.746
hf=218.82
x= (s1-sf)/sfg
v2=vg*x
h2=hf+x*hfg
V2rev=223.77*sqrt(h1-h2)
m=%pi/4 *1/144 *V2rev/v2
//results
printf("mass flow rate = %.3f lbm/sec",m)

