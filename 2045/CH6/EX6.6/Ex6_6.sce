//pagenumber 339 example 6
clear
w=5*10^-4;//centimetre
em1cur=2*10^-3;//ampere
q=47;
voltag=26*10^-3;//volt
re=voltag/em1cur;
fq1=2*q/(w^2*2*3.14);
cde=(em1cur*w^2)/(voltag*2*q);
w=(w^2)/(2*q);
disp("re   =   "+string((re))+"ohm");
disp("falpha   =   "+string((fq1))+"hertz");
disp("cde   =   "+string((cde))+"farad");


disp("w   =   "+string((w))+"second");



