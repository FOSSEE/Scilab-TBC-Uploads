//example 31
clear
vcc=10;//volt
basres=1*10^6;//ohm
colres=2*10^3;//ohm
em1res=1*10^3;//ohm
beta1=100;
bascur=vcc/(basres+(beta1+1)*(em1res));
colcur=beta1*bascur;
em1cur=colcur+bascur;
disp("base current   =   "+string((bascur))+"ampere");
disp("collector current   =   "+string((colcur))+"ampere");//correction in book
disp("emitter current   =   "+string((em1cur))+"ampere");//correction in book


