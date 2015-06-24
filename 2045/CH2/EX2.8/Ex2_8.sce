//pagenumber 104 example 8
clear
p=2;//watts
voltaf=900*10^-3;//volt
i1=p/voltaf;
r1=voltaf/i1;
disp("maximum forward current   =   "+string(i1)+"ampere");


disp("forward diode resistance   =   "+string(r1)+"ohm");

