//pagenumber 301 example 21
clear
hie=1*10^3;//ohm
hre=2*10^-4;
hoe=25*10^-6;//ampere per volt
hfe=50;
colres=1*10^3;//ohm
curgai=-hfe/(1+hoe*colres);
disp("current gain   =   "+string((curgai)));
ri=hie-hfe*hre/(hoe+1/colres);
disp("input resistance   =   "+string((ri))+"ohm");
volgai=curgai*colres/ri;
disp("voltage gain   =   "+string((volgai)));
y1=hoe-((hfe*hre)/(hie+800));
r1=1/y1;
disp("output resistance   =   "+string((r1))+"ohm");
//approximate
disp("approximate");
curgai=-hfe;
disp("current gain   =   "+string((curgai)));
ri=hie;
disp("input resistance   =   "+string((ri))+"ohm");
volgai=-hfe*colres/hie;
disp("voltage gain   =   "+string((volgai)));





