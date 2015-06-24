//Caption: (a)Power alternator can supply (b)Power factor of synchronous motor (c)Load taken by motor
//Exa:15.8
clc;
clear;
close;
P=500//Load supplied by alternator(inKW)
pf=0.8//Power factor 
e=0.9
L=P/pf
Ps=L-P
disp(Ps,'(a)Power alternator can supply(in KW)=')
Pr=P*tand(acosd(pf))
pfm=cosd(atand(Pr/Ps))
disp(pfm,'(b)Power factor of synchronous motor=')
l=Ps*e
disp(l,'(c)Load taken by motor(in Kw)=')