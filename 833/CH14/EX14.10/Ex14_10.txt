//Caption:Find (a)Load supplied by second machine and its power factor (b)Power factor of total load
//Exa:14.10
clc;
clear;
close;
P1=300//Lighting load(in KW)
P2=500//Industrial load(in KW)
P3=200//Industrial load(in KW)
P4=100//Load(in KW)
Pa=500//Power supplied by first machine(in KW)
pf1=0.8
pf2=0.707
pf3=0.9
pfa=0.8
La=P1+P2+P3+P4
Lr=(P2*tand(acosd(pf1)))+(P3*tand(acosd(pf2)))+(P4*tand(acosd(pf3)))
Pb=La-Pa
Prl=Pa*(tand(acosd(pfa)))
Pc=Lr-Prl
pfb=cosd(atand(Pc/Pb))
pfl=cosd(atand(Lr/La))
disp(pfb,Pb,'(a)Load supplied by second machine(in KW) and its power factor=')
disp(pfl,'(b)Power factor of load=')