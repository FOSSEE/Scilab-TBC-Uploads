//example 7.6 
clc; funcprot(0);
// Initialization of Variable
V1=12//V
V2=22;//V
I=.7;//A
f=100;//kHz
R=.4;//ohm
Vd=.5;
//calculation
Pl=V2*I;
disp(Pl,"load power in W:")
Ps=Pl/.9;
disp(Ps ,"supply power in W:")
Id=round(Ps/V1*10)/10;
disp(Id,"dc current in A:")
i=.25*Id;
Ip=Id+i/2;
disp(Ip,"inductor current in A:")
D=round((1-V1/V2)*100)/100;
disp(D,"duty cycle :")
t=D/f;
L=V1*t/i;
disp(L*1000,"inductor in microH:")
Vp=Id*R;
Pq=D*Vp*Id;
disp(Pq*1000,"transistor power in mW:")
Pd=(1-D)*.5*Id;
disp(round(Pd*100)*10,"diode power in mW:")
C=Id*t/2/20;
disp(C*1e6,"capacitor in microF:")
clear()
