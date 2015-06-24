clc
clear
disp('example 13.1')
pg=3000  //kva rating of generators single phase
xg=0.1  //10%reactanse of generator
vg=11   //voltage at the terminals of generator
xbf=5    //reactanse of feeder fron bus to fault
pb=pg;vb=vg;ib=pg/vg  //let power and voltage of as respective base then current base
zb=(vb*10^3)/ib   //base impedence
xpu=xbf/zb  //per unit reactance of feeder
tx=(xg/2)+(xpu) //total reactance 
sckva=pg/tx  //short circuit kva is ratio ofpower to total reactance
sci=sckva/vg   //short circuit current
disp('a')
printf(" p.u.feeder reactor %.3fp.u \n total reactance is %.3fp.u \n short circuit kVA %dkVA \n short circuit current %.1fA",xpu,tx,sckva,sci)
gz=zb*xg  //generator impedence
tz=(gz/2)+xbf  //total impedence
scc=(vg*10^3)/tz  //short circuit current in ampears
disp('b') 
printf(" generator impedence %.3fohm \n total impedence %.3f ohm \n short circuit current %.1fA",gz,tz,scc)
