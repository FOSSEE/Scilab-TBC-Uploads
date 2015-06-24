//Example 1_39
clc;
clear;close;

//Given data: 
RL=8;//ohm
V=230;//V
Ip=100;//A
SF=2;//safety factor
di_by_dt_max=40/10^-6/2;//A/s
dv_by_dt_max=150/10^-6/2;//V/s

 L=sqrt(2)*V/di_by_dt_max;//H
disp(L,"Value of L(H)");
R=L/(sqrt(2)*V)*dv_by_dt_max;//ohm
disp(R,"Value of R(ohm)");
IL_peak=(sqrt(2)*V)/RL;//A
Ic_peak=(sqrt(2)*V)/R;//A
Itotal=IL_peak+Ic_peak;//A
disp(Itotal,"Total current through capacitor for these values(A)");
disp("Itotal>Ip, therefore value of R should be increased.");
Ic_max=Ip-IL_peak;//A
R=(sqrt(2)*V)/Ic_max;//ohm
R=ceil(R);//ohm
disp(R,"New Value of R(ohm)");
damping=0.65;
C=4*damping^2*L/R^2;//F
disp(C*10^6,"Value of C(micro F)");
disp(L*10^6,"Value of L(micro H)");
//Ic_switching=C*dv/dt
dv_by_dt=sqrt(2)*V/(R+RL)/C;//V/s
disp("Value of dv/dt is "+string(dv_by_dt)+" V/s. It is within the limit for the calculated value of R, L & C. Design is safe.")

