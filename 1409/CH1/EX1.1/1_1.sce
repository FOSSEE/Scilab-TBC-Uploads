clc;
//Page no:1-21
//Example-1.1
//Given bandwidth of each message is 4kHz, number of quantum levels are 256 and pulse allocation width of 0.625 micro sec
//Let no of quantum levels be Q
//Number of pulses used in one group is denoted by P
Q=256;
P=log2(Q);
//Let time for each pulse group be T
//Let pulse duration is denoted by d
d=0.625;
T=d*P;
//Let sampling frequency be S
fm=4;
S=2*fm;
//Time period between two samples be t
t=(1*10^3)/S;
//Total number of messages be tot
tot=t/T;
disp(P,'Number of pulses used in one group=');
disp(+'micro sec',T,'Time for each pulse group=');
disp(+'kHz',S,'Sampling frequency=');
disp(+'micro sec',t,'Time period between two samples=');
disp(tot,'Total number of messages which can be transmitted=');
