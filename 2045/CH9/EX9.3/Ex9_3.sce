//pagenumber 425 example 3
clear
g=10*10^-3;//ampere per volt
rd=5.5*10^3;//ohm
rg=1*10^6;//ohm
//(1) cb frequency 1decibel to 10hertz
ri=rg;
r1=(rd*8*10^3)/(rd+8*10^3);
cb=10^-6/(3.14*5.07);
disp("cb   =   "+string((cb))+"farad");
//(2) cb
cb=(cb*(5)/(3.52));
disp("cb   =   "+string((cb))+"farad");
//(3) gain
a1=g^2*(3.26^2);
disp("gain of each stage   =   "+string((a1)));//correction in the book



