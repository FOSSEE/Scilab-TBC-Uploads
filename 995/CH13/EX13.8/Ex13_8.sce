//Ex:13.8
clc;
clear;
close;
r=2;//in ohms
i=0.5;//in amps
P_r=4;//in W
P_loss=i*i*r;
P_eff=(P_r/(P_r+P_loss))*100;
printf("The power loss = %f W",P_loss);
printf("\n The power loss = %f %%",P_eff);