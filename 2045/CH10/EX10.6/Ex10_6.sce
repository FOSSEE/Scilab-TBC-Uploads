//pagenumber 470 example 6
clear
colres=4*10^3;//ohm
r=4*10^3;//ohm
basres=20*10^3;//ohm
r1=1*10^3;//ohm
hie=1.1*10^3;
hfe=50;
hoe=(40*10^3);
ri=basres*hie/(basres+hie);
curgai=((r1/(r1+ri)))*((basres/(basres+hie)))*((-hfe*colres)/(colres+r));
volgai=curgai*r/r1;
tranco=volgai/r;
tranre=r1*volgai;
outres=hoe*colres/(hoe+colres);
disp("current gain   =   "+string((curgai)));
disp("voltage gain   =   "+string((volgai)));
disp("transconductance   =   "+string((tranco))+"ampere per volt");
disp("transresistance   =   "+string((tranre))+"ohm");
disp("input resistance   =   "+string((ri))+"ohm");
disp("output resistance   =   "+string((outres))+"ohm");


