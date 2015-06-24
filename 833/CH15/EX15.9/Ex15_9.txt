//Caption:Find efficiency of machine
//Exa:15.9
clc;
clear;
close;
P=50000//Power of alternator(in KVA)
V=11//Voltage of alternator(in Kv)
pf=0.8//Power factor
r=0.01//Resistance of stator winding per phase(in ohms)
Wc=150//Copper loss(in KW)
Wf=100//Friction loss(in KW)
Ww=250//Winding loss(in KW)
Wco=200//Core loss(in KW)
We=15//Excitor loss(in KW)
Is=(P*1000)/(sqrt(3)*V*1000)
Ps=(Is^2)*3*(r/1000)
Ws=(0.5*Ps)
Lt=Ps+Ws+Wc+Wf+Ww+Wco+We
Po=P*pf
Pi=Po+Lt
e=Po*100/Pi
disp(e,'Efficieny of machine(in %)=')