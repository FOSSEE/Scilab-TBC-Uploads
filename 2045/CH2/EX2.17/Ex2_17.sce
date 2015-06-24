//pagenumber 113 example 17
clear
voltag=25;//volt
c1=10*10^-6;//farad
i1=100*10^-3;//ampere
ripple=0.001;
w=754;//radians
//(1) inductance and resistance


r1=voltag/i1;
induct=40/(sqrt(2)*w^2*(c1));
disp("inductance of filter   =   "+string((induct))+"henry");//correction in the book
disp("resistance of filter   =   "+string((r1))+"ohm");

