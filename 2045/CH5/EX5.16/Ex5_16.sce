//pagenumber 296 example 16
clear
r1=2000;//ohm
r=900;//ohm
hie=1200;//ohm
hre=2*10^-4;
hfe=60;
hoe=25*10^-6;//ampere per volt
curgai=(hfe)/(1+hoe*r1);
disp("current gain   =   "+string((curgai)));
ri=hie+(curgai*r1);
disp("input impedance   =   "+string((ri))+"ohm");
volgai=curgai*r1/ri;
disp("voltage gain   =   "+string((volgai)));
admita=1/ri;
admita=hoe-(-hfe*hre)/(hie+r);
r=1/admita;
disp("output resistance   =   "+string((r))+"ohm");

