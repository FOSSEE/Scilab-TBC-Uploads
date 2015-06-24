clc;

//page no 43
//problem 2.5
//All voltages are in V
//All power in watts
R=5;  //ohm
C0=5;  //dc value
C1=8;
C2=6;
C3=3;   //volts
Vrms=sqrt(C0^2+0.5*(C1^2+C2^2+C3^2));  //rms voltage
disp(Vrms,'(a)  The rms value of voltage is');
P=Vrms^2/R;   //watts
disp('W',P,'(b)  The average power dissipated in resistor is')
P0=C0^2/R;
disp(P0,'(c)  The dc power is ');
P1=C1^2/(2*R);
disp(P1,'The power in fundamental is');
P2=C2^2/(2*R);
P3=C3^2/(2*R);
disp(P3,P2,'The second and third harmonics are');
//for plot
fHz=[0:1600];
f1=500;  //fundamental freq.
f2=1000;  f3=1500; 
Pn=[P0 zeros(1:f1-1) P1 zeros(f1+1:f2-1) P2 zeros(f2+1:f3-1) P3 zeros(f3+1:1600)]
clf
plot2d(fHz,Pn,[3],rect=[0,0,1600,8])
xtitle('Power spectrum','f,Hz','Pn(W)')
xgrid
