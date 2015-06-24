//Caption:(a)How much KVA should be supplied by synchronous motor (b)Power factor of synchronous motor
//Exa:15.7
clc;
clear;
close;
Pm=40//Power absorb by motor(in Kw)
Pl=300//Load connected in parallel with motor(in KW)
pfm=0.85//Power factor of motor
pfl=0.9//Power factor on load
Pt=Pl+Pm
Pr=Pt*tand(acosd(pfl))
Pri=Pl*tand(acosd(pfm))
Ps=Pri-Pr
pf=cosd(atand(Ps/Pm))
disp(Ps,'(a)Power supplied by synchronous motor(in KVA)=')
disp(pf,'(b)Power factor of synchronous machine=')