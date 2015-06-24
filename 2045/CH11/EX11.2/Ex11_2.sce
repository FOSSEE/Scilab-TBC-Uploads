//pagenumber 514 example 2
clear
macapa=900*10^-12;//farad
micapa=90*10^-12;//farad
r=100*10^3;//ohm
//(a) frequency range
fremin=1/(2*3.14*r*macapa);
disp("min frequency   =   "+string((fremin))+"hertz");
fremax=1/(2*3.14*r*micapa);
disp("max frequency   =   "+string((fremax))+"hertz");
//(b) r3
r=10*10^3;//ohm
r3=2*r;
disp("resistance r3   =   "+string((r3))+"ohm");

