//example 25
clear
colcur=100*10^-3;//ampere
ouresi=20;//ohm
r=200;//ohm
r1=100;//ohm
vcc=15;//volt
basvol=((r1)/(r+r1))*vcc;
em1res=basvol/colcur;
vce=vcc-(ouresi+em1res)*colcur;
disp("vce   =   "+string((vce))+"volt");
disp("emitter resistance   =   "+string((em1res))+"ohm");



