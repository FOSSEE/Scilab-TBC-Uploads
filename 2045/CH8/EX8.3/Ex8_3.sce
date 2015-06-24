//pagenumber 401 example 3
clear
r1=60*10^3;//ohm
volgai=-17.7;
rg=80*10^3;//ohm
volgai=((volgai*rg)/(1-volgai))/((rg/(1-volgai))+r1);
disp("voltage gain   =   "+string((volgai)));




