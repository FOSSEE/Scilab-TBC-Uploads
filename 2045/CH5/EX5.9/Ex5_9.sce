//pagenumber 290 example 9
clear
hib=25;//ohm
hfb=0.999;
hob=10^-6;//ohm
colres=10*10^3;//ohm
//voltage gain
curgai=hfb/(1+hob*colres);
zi=hib+hob*colres*curgai;
volgai=curgai*colres/(zi);
disp("voltage gain   =   "+string((volgai)));//correction in the book
