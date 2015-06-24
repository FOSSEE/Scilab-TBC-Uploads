//pagenumber 306 example 28
clear
re=4*10^3;//ohm
r1=4*10^3;//ohm
hie=1.1*10^3;//ohm
resist=10*10^3;//ohm
hfe=50;
rb=10*10^3;//ohm
r=1*10^3;//ohm
colres=5*10^3;//ohm
//(1) current gain
ri=rb*hie/(rb+hie);
curgai=(1/2.04)*((rb)/(rb+hie))*((-hfe*colres)/(colres+r1));
disp("current gain   =   "+string((curgai)));
//(2) voltage gain
volgai=curgai*r1/r;
disp("voltage gain   =   "+string((volgai)));
//(3) tranconductance
conduc=volgai/r1;
disp("transconductance   =   "+string((conduc))+"ampere per volt");
//transresistance
resist=resist*volgai;
disp("transresistance   =   "+string((resist))+"ohm");
disp("input resistance   =   "+string((ri))+"ohm");
r=(40*10^3*colres)/(40*10^3+colres);
disp("output resistance   =   "+string((r))+"ohm");



