//Controllers and Their Optimisation//
//Example 12.3//
f=50;//frequency in hz//
p=6;//pulse number//
t1=1000/(2*f*p);//time constant for the current loop in ms//
printf('time constant for the current loop=t1=%fms',t1);
t2=1.5;//time constant of feedback channel in ms//
G=t1+t2;//smaller time constant in ms//
printf('\nSmaller time constant=G=%fms',G);
T1=30;//bigger time constant in ms//
Tn=T1;//time constant of the controller in ms//
printf('\nTime constant of the controller in AVO=Tn=%fms',Tn);
V=T1/(2*G);//gain of the control system//
printf('\nGain of the control system=V=%f',V);
Vg=14;//gain of the regulating current link//
Vr=V/Vg;//gain of the PI controller//
printf('\nGain of the PI controller=Vr=%f',Vr);
R2=11;//R2 in KiloOhms//
R1=R2/Vr;//R1 in kiloohms//
printf('\nR1=%fKiloohms',R1);
C1=Tn/R1;//C1 in microfarads//
printf('\nC1=%fmicrofarads',C1);