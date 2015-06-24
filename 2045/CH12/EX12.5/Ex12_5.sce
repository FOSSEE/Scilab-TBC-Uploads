//pagenumber 554 example 5
clear
slope1=16;
durmax=4*10^-6;//second
curmin=500*10^-3;//ampere
voltag=15;//volt
//(1) resistance
vg=slope1*curmin
r=(voltag-vg)/curmin;
//(2)
d=vg*curmin;
freque=0.3/(d*durmax);
disp("resistance   =   "+string((r))+"ohm");


disp("frequency   =   "+string((freque))+"hertz");




