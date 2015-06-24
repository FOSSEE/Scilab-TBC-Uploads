//pagenumber 373 example 5
clear
idss=10*10^-3;//ampere
pinvol=-1;//volt
ids=6.4*10^-3;//ampere
vgs=-(sqrt(ids/idss)-(1))*pinvol;
r=pinvol/ids;


disp("source resistance   =   "+string(abs(r))+"ohm");

