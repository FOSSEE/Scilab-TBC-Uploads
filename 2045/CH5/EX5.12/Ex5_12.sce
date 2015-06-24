//pagenumber 292 example 12
clear
hfe=110;
hie=1.6*10^3;//ohm
hoe=20*10^-6;//ohm
colres=4.7*10^3;//ohm
hre=2*10^-4;
r1=470*10^3;//ohm
curgai=-hfe/(1+hoe*colres);
ri=hie+hre*curgai*colres;
volgai=curgai*colres/ri;
y1=hoe-((hfe*hre)/(hie+1*10^3))
z1=1/y1;
disp("voltage gain   =   "+string((volgai)));
disp("current gain   =   "+string((curgai)));
disp("impedance   =   "+string((z1))+"ohm");
r0=z1*colres/(z1+colres);
curgai=-hfe;
ri=hie;
disp("parameters using approxmiate");
volgai=curgai*(colres)/ri;
disp("voltage gain   =   "+string((volgai)));//correction in the book
disp("current gain   =   "+string((curgai)));
disp("impedance   =   "+string((z1))+"ohm");





