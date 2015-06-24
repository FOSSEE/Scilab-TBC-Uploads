// 2.51
clc;
M=0.95;
tc=1.5*10^-3;
w=(1/tc)*[(M^2)/(1-M^2)]^0.5;
printf("\n Minimum frequency=%.2f rad/sec",w)
ph={(%pi/2)-[atan(w*tc)]}*(180/%pi);
printf("\n Phase shift=%.2f deg",ph)
