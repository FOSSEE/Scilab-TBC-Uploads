//pagenumber 296 example 17
clear
hfe=60;
hie=500;//ohm
ic=3*10^-3;//ampere
zi=hie;
rb=220*10^3;//ohm
colres=5.1*10^3;//ohm
z=colres;
volgai=-hfe*colres/hie;
curgai=-hfe;
vcc=12;//volt
ib=(vcc-0.6)/rb;
ie=hfe*ib;
re=0.026/ie;
zi=hfe*re;
z=colres;
volgai=-colres/re;
curgai=-hfe;
disp("voltage gain   =   "+string((volgai)));
disp("current gain   =   "+string((curgai)));
disp("input impedance   =   "+string((zi))+"ohm");
disp("output impedance   =   "+string((z))+"ohm");
