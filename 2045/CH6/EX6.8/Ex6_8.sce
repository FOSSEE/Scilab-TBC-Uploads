//pagenumber example 8
clear
w=10^-6;//centimetre
em1cur=4*10^-3;//ampere
voltag=26*10^-3;//volt
q=47;
cde=(em1cur*w^2)/(voltag*2*q);
fq1=(em1cur)/(2*3.14*cde*voltag);
disp("f   =   "+string((fq1))+"hertz");
disp("cde   =   "+string((cde))+"farad");//correction in book 0.0016pico farad

