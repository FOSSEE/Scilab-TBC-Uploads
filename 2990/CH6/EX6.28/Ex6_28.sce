
clc; funcprot(0);
// Initialization of Variable
L1=30000.0;//length in m
pl=0.6;//overlap
k=12000.0*0.2;//=l/S and w/S
pw=0.3;//side lap
W1=24000;//width in m
//calculation
N=round(((L1/((1-pl)*k)+1)+1))*round(((W1/((1-pw)*k)+1)+1));
disp(N,"no. of photographs taken");
Nf=N/33-1;//flight strips
disp(Nf,"no. of flight strips");
gd=(1-pl)*k;//grounf distance
disp(gd,"ground distance in m");
I=gd/(200e3)*60.0*60.0;//exposure interval
disp(round(I),"exposure interval in s");
ad=round(I)/60.0/60*200e3;//actual distance
disp(ad,"actual distance in m");
clear()
