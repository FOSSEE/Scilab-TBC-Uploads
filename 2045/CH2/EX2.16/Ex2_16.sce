//pagenumber 112 example 16
clear
capaci=4;//farad
induct=20;//henry
i1=50*10^-3;//ampere
resist=200;//ohm
maxvol=300*sqrt(2);
vdc=maxvol-((4170/capaci)*(i1))-(i1*resist);
ripple=(3300*i1)/((capaci^2)*(induct)*353);
disp("output voltage   =   "+string((vdc))+"volt");
disp("ripple voltage   =   "+string((ripple)));
