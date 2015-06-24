//pagenumber 115 example 21
clear
resacu=1*10^-6;//ampere
voltaf=150*10^-3;//volt
w=8.62*10^-5;
voltag=0.026;//volt
u=300;//kelvin
uw=u*w;
resist=(uw)/((resacu)*exp(voltaf/voltag));
disp("resistance at 150mvolt   =   "+string((resist))+"ohm");//correction in the book

