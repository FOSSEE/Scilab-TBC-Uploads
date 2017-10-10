clc;
P=6; 
f=50;
N_f=960;
Ns=(120*f)/P;
n1=800; 
n2=400;

s_fl=(Ns-N_f)/Ns;
s_1=(Ns-n1)/Ns;
s_2=(Ns-n2)/Ns;
Ratio_1=s_1/s_fl;
Ratio_2=s_2/s_fl;
mprintf('The Ratio at %d rpm is %f \n',n1,Ratio_1);
mprintf('The Ratio at %d rpm is %f \n',n2,Ratio_2);
