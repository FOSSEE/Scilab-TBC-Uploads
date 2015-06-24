clear;
clc;
//Example 15.13
Rl=10;//load resistance 
Pl=20;//power delivered to the load
Ps=20;//(W)
Vp=sqrt(2*Rl*Pl);
printf('\npeak output voltage=%.2f V\n',Vp)
Ip=Vp/Rl;
printf('\npeak load current =%.2fA\n',Ip)
Vs=%pi*Rl*Ps/Vp;
printf('\nrequired supply voltage=%.2f V\n',Vs)
