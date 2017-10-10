//Section-14,Example-1,Page no.-PC.71
//To find Q_c and predict the direction in which the reaction would proceed.
clc;
[N_2]=0.03                   //mol
[O_2]=0.01                    //mol
[NO]=0.04                     //mol
K_c=2.2*10^3
Q_c=([N_2]*[O_2])/[NO]^2
disp(Q_c)
//since, Q_c<K_c,reaction will proceed in forward direction.
