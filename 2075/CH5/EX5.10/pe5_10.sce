//example 5.10
clc; funcprot(0);
// Initialization of Variable
G=6.4;//A/V
I=5;//current
Pq=9.8;//W
Tj=140;
Ta=40;
//calculation
R=2/G;
disp(R,"resistance in ohm:")
printf('thus pick a .33ohm rsistance')
R=.33;
Im=I/3;
Vr=Im*R;
disp(Vr,"voltage in V:")
P=Vr*Im/4;
disp(P,"power in W:")
Qs=(Tj-Ta)/Pq-2.1;
disp(Qs,"thermal resistance in degreeC/W")
clear()
