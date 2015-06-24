//pagenumber 221 example 34
clear
em1cur=2*10^-3;//ampere
v1=12;//volt
vcc=12;//volt
format(12);
colres=5*10^3;//ohm
em1res=v1/em1cur;
colcur=em1cur;
voltag=colcur*colres;//ic*r
v1=vcc-(colres*colcur);
disp("emitter current   =   "+string((em1cur))+"ampere");
disp("collector current   =   "+string((colcur))+"ampere");
disp("voltage   =   "+string((voltag))+"volt");
disp("vcb   =   "+string(abs(v1))+"volt");
disp("emitter resistance   =   "+string((em1res))+"ohm");




