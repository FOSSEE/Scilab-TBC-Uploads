//pagenumber 297 example 18
clear
hie=3.2*10^3;//ohm
hfe=100;
r=40*10^3;//ohm
r1=4.7*10^3;//ohm
colres=4*10^3;//ohm
rb=r*r1/(r+r1);
zi=hie*rb/(hie+rb);
z=colres;
re=1.2*10^3;//ohm
volgai=-hfe*colres/hie;
disp("input impedance   =   "+string((zi))+"ohm");
disp("output impedance   =   "+string((z))+"ohm");
disp("voltage gain   =   "+string((volgai)));
curgai=-hfe*rb/(rb+hie);
disp("current gain   =   "+string((curgai)));
hie=833;
//(1) load open
vi=1;
ib=vi/hie;
volgai=hfe*ib*1.5*10^3;
//load closed
hoe=50;
r2=2*10^3;//ohm
ib=vi/(r2+hie);
vb=1.682;
ib=(vb-0.6)/(rb+(1+hfe)*(re));
ic=hfe*ib;
ie=ic+ib;
re=0.026/ie;
zi=rb*hfe*re/((rb)+(hfe*re));
disp("parameters in re");
disp("input impedance   =   "+string((zi))+"ohm");
z=colres;
disp("output impedance   =   "+string((z))+"ohm");
volgai=colres/(-re);
disp("voltage gain   =   "+string((volgai)));
curgai=-hfe*rb/(rb+hfe*re);
disp("current gain   =   "+string((curgai)));

