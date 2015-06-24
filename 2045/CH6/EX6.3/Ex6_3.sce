//pagenumber 338 example 3
clear
w=1*10^-4;//centimetre
em1cur=2*10^-3;//ampere
q=47;
voltag=26*10^-3;//volt
cde=(em1cur*w^2)/(voltag*2*q);
fq1=(em1cur)/(2*3.14*cde*voltag);
disp("cde   =   "+string((cde))+"farad");
disp("frequency   =   "+string((fq1))+"hertz");

