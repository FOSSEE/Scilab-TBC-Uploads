//pagenumber 371 example 2
clear
idss=1*10^-3;//ampere
pinvol=1;//volt
q=10;//volt
rd=56*10^3;//ohm
vdd=24;//volt
dracur=(vdd-q)/rd;
vgs=0.5;
r1=vgs/dracur;
disp("r1   =   "+string((r1))+"ohm");
