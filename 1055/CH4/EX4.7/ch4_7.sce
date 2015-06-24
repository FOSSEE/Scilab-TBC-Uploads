//To determine of efficiency of line
clear
clc;
Ir=40*1000/(sqrt(3)*132*.8);
Vr=132*1000/sqrt(3);
Zc=380*(cosd(-13.06)+ %i*sind(-13.06));
IR=Ir*(cosd(-36.8)+ %i*sind(-36.8));
Vsp=(Vr+IR*Zc)*(1.033*(cosd(8.02)+ %i*sind(8.02)))/2;
Vsm=(Vr-IR*Zc)*(.968*(cosd(-8.02)+ %i*sind(-8.02)))/2;
vs=Vsp+ Vsm;
Vs=abs(vs);
is=(Vsp-Vsm)/Zc;
Is=abs(is)
P=3*Vs*Is*cosd(33.72)/10^6;
n=40*100/P;
mprintf("efficiency=%.1f",n);//Answer don't match due to difference in rounding off of digits

