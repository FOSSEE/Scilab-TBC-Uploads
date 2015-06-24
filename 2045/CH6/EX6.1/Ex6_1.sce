//pagenumber 337 example 1
clear
colcur=10*10^-3;//ampere
vce=10;//volt
hie=500;//ohm
hoe=4*10^-5;
hfe=100;
hre=1*10^-4;
fqu=50*10^6;//hertz
q=3*10^12;//farad
voltag=26*10^-3;//volt
g=colcur/voltag;
gbe=g/hfe;
gbc=gbe*hre;
rbb=hie-260;
oucond=hoe-(1+hfe)*gbc;
cbe=g/(2*3.14*fqu);
rbc=1/gbc;
rce=1/oucond;
disp("transconductance g   =   "+string((g))+"ampere/volt");
disp("input conductance gbe   =   "+string((gbe))+"ampere/volt");
disp("feedback conductance gbc   =   "+string((gbc))+"ampere/volt");
disp("base spread resistance rbb   =   "+string((rbb))+"ohm");
disp("output conductance   =   "+string((oucond))+"ampere/volt");
disp("transition capacitance cbe   =   "+string((cbe))+"farad");
disp("rbc    =   "+string((rbc))+"ohm");//correction as 2.6mega ohm
disp("rce   =   "+string((rce))+"ohm");


