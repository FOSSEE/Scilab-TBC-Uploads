//Finding of Number of pumps
//Given
H=156;
N=1000;
Ns=20;
Q=0.15;
//To Find
Hm=(N*sqrt(Q))/Ns;
Hm1=(Hm)^(4/3);
pumps=(H/Hm1);
disp("Number of Pumps ="+string(pumps)+" Nos");
