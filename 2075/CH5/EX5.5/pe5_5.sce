//example 5.5
clc; funcprot(0);
// Initialization of Variable
R1=22;//resistance
Vg=3.6;//voltage
Vd=56;
G=.98;//gain
Vi=40;
Rl=8;//load resistance
Vp=36.5;
pi=3.1428;
//calculation
Vr=Vd-Vg;
Ir=Vr/R1;
R2=Vg/Ir;
disp(R2,"resistance in kohm:")
Va=(R1/(R1+R2))*Vi;
Vl=G*Va;
disp(Vl,"load voltage in V:")
Il=Vp/Rl;
Pl=Vp*4.6/4;
Ps=Vd*4.6/pi;
Pq=Ps-Pl;
disp(Pq,"Pq in watt:")
disp(Ps,"Ps in watt:")
disp(Pl,"Pl in watt:")
