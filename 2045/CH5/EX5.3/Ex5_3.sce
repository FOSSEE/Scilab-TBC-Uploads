//pagenumber 286 example 3
clear
colres=4*10^3;//ohm
r1=4*10^3;//ohm

rb=20*10^3;//ohm
r=1*10^3;//ohm
hie=1.1*10^3;//ohm

//current gain
ri=rb*hie/(rb+hie);
curgai=(1/2.04)*(rb/(rb+(hie)))*(-50*colres/(colres+(r1)));
disp("current gain   =   "+string((curgai)));
//voltage gain
volgai=curgai*r1/r;
disp("voltage gain   =   "+string((volgai)));
//transconductance
conduc=volgai/r1;
disp("transconductance   =   "+string((conduc))+"ampere per volt");
//transresistance
resist=volgai*r;
disp("transresistance   =   "+string((resist))+"ohm");
//input resistance
disp("input resistance   =   "+string((ri))+"ohm");
//output resistance
resist=40*10^3*colres/(40*10^3+colres);



disp("output resistance   =   "+string((resist))+"ohm");


