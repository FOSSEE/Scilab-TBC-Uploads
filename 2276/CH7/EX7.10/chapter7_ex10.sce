clc
clear

//input
v=3.3;//voltage rating of an alternator in kV
ri=3;//internal resistance of alternator in ohms
xl=32;//series inductive reactance in ohms
rc=1;//resistance of a cable in ohms
xc=2;//effective reactance of the cable in ohms

//calculations
R=ri+rc;//resistance of line and alternator in ohms
X=xl+xc;//reactance of line and alternator in ohms
Z=((R^2)+(X^2))^0.5;//impedance of line and alternator in ohms
Rl=Z;//required load resistance in ohms
zt=(((Z+R)^2)+(X^2))^0.5;//total impedance of the circuit in ohms
I=(v*1000)/zt;//current in amperes
pmax=(I*I*Rl)/1000;//maximum power in load in kilowatts

//output
mprintf('togive a maximum load power of %3.0f kW the load must have a resistance of %3.2f ohms',pmax,Rl)
