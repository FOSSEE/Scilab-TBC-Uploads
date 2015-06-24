//example 5.8
clc; funcprot(0);
// Initialization of Variable
P=50;//power
Z=4.7//impedence
R=4;//resistance
Ta=40;//degreeC
Tj=140;//degreeC
Vd=28;
R2=22;
pi=3.1428;
//calculation
Vr=(P*R)^.5;
Vp=Vr*2^.5;
disp(Vp,"load rms voltage in V:")
Av=-Vr/1.23;
Rf=-Av*Z;
disp(Rf,"resistance in kohm:")
I=(Vd-2)/R2;
disp(I,"current in mA:")
Vm=.63*Vd;
Ip=Vm/R;
disp(Ip,"load current in A:")
Ps=Vd*Ip/pi;
disp(round(Ps),"supply power in watt:")
Pl=Ip^2/2*R;
disp(round(Pl),"load power in W:")
Pq=round(Ps)-Pl/2;
disp(Pq,"power in W:")
Qs=(Tj-Ta)/Pq-2.1;
disp(Qs,"thermal resistance in degreC/W:")
clear()
