clc;
clear;
w=400;
V1=11;
V2=415;
Hvl=2.46;//I^2R loss for HV side
Lvl=1.95;//Lv loss
X=0.055;//Total leakage reactance
Vph1=11;
Vph2o=V2/(3^(1/2));
Vph2=V2/(3^(1/2)*1000);
Iph1=12.1;
Iph2=555;
H1vl=0.82;//HV losses per phase
L1vl=0.65;//LV losses per phase
r1=820/((Iph1)^2);
r2=650/((Iph2)^2);
disp(r1,'r1=')
disp(r2,'r2=')
R1=r1+(r2*((Vph1/Vph2)^2));
R2=(r1*((Vph2/Vph1)^2))+r2;
disp(R1,'The total resistance at HV side:')
disp(R2,'The total resistance at LV side:')
P1=(Iph1^2)*R1;//for HV side
disp(P1,'For HV side Iph1^2R1:')
X1=(X*11000)/Iph1;//where 11KV=11000
//Reactance at HV side
X2=X1*(Vph2o/11000)^2;//Reactance at LV side
x1=X1/2;
x2=X2/2;
disp(x1,'The reactance of HV side is:')
disp(x2,'The reactance of LV side is:')
