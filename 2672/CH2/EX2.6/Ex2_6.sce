//Ex_2_6
clc;
clear;
close;
format('v',6);
//given data : 
N1=1000;//turns
N2=400;//turns
K1=75/100;//coefficient of coupling
I1=6;//A
I2=6;//A
fi1=0.8;//mWb
fi2=0.5;//mWb
L1=N1*fi1*10^-3/I1;//H
L2=N2*fi2*10^-3/I2;//H
M=N2*K1*fi1*10^-3/I1;//H
K=M/sqrt(L1*L2);
disp(L1,"Self inductance of coil 1(H)");
disp(L2,"Self inductance of coil 2(H)");
disp(M,"Mutual Inductance of two coil(H)");
disp(K,"Coefficient of coupling");
