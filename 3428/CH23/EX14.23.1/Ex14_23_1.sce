//Section-14,Example-1,Page no.-PC.69
//To calculate K_p and K_x.
clc;
//K_p=K_c*((R*T)^dl_n)
dl_n=2-(1+3)
T=673
R=0.0821
K_c=0.495
P=2
K_p=K_c*((R*T)^dl_n) 
disp(K_p)
//K_p=K_x*((P)^dl_n)
K_x=K_p/((P)^dl_n)
disp(K_x)
