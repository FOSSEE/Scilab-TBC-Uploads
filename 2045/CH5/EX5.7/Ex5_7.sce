//pagenumber 268 example 7
clear
hie=800;//ohm
he=50*10^-6;//mho
hfe=-55;
z1=2*10^3;//ohm
curgai=hfe/(1+he*z1);
zi=hie
volgai=curgai*z1/zi;
powgai=volgai*curgai;
//if hoe neglected
av=137.5;
hfe=-55;
w=((av-abs(volgai))*100)/abs(volgai);
ap=hfe*(-av);
w1=((ap-powgai)*100)/powgai;
disp("voltage gain   =   "+string((volgai)));


disp("power gain   =   "+string((powgai)));
disp("error without hoe   =   "+string((w)));
disp("error   =   "+string((w1)));

