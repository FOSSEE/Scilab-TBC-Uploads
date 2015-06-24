// 4.4
clc;
delta=4.8;
Es=2.4;
K=delta/Es;
Es1=7.2;
delta1=K*Es1;
Es2=10;
delta2=K*Es2;
fs1=500*10^-3;
mf1=delta/fs1;
printf("\nmodulation index for Es (2.4) =%.1f",mf1)
mf2=delta1/fs1;
printf("\nmodulation index for Es(7.2)=%.1f",mf2)
mf3=delta2/fs1;
printf("\nmodulation indexfor Es(10) =%.1f",mf3)

