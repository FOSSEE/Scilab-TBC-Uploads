clc;
absorp1=92.90; //in m^^2
absorp2=92.90;//in m^2
V=2265.6;//in m^3
T1=0.16*V/(absorp1);
T2=0.16*V/(absorp1+absorp2);
ans=T2/T1;//effect on Reverberation time
disp(+"of its original value",ans,"Reverberation time will reduced to ")
