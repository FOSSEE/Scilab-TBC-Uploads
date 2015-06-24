clc
//Example 16.5
disp('Given')
disp('R=5 ohm L=100mH w=100 rad/s')
Rs=5; Ls=100*10^-3 ;w=100;
//Let Xs be the capacitive and inductive reactance 
Xs=w*Ls
Q=Xs/Rs
//As Q is greater than 5 we can approximate as
Rp=Q^2*Rs
Lp=Ls
printf("The parallel equivalent is \n");
printf("Rp= %d ohm \t Lp=%d mH",Rp,Lp*10^3);