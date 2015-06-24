//pagenumber 299 example 19
clear
hfe=120;
hie=0.02;//ohm
r1=5.8*10^3;//ohm
r=27*10^3;//ohm
colres=1.5*10^3;//ohm
re=330*10^3;//ohm
vcc=10;//volt
vb=vcc*r1/(r1+r);
rb=(r*r1)/(r+r1);
ib=(vb-0.7)/(rb+((1+hfe)*re));
volgai=-hfe*ib*2*10^3;
disp("voltage gain   =   "+string((volgai)));//correction in the book

