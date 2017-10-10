//Example 10_12 page no:462
clc;
//given
area=100*10^-4;
B=5*10^-3*10^4/100;
mu=4*%pi*10^-7;
phi=5*10^-3;
H=B/mu;
len=2.5*10^-3;
mmf_required=H*len;//in text book H of the gap is rounded so mmf_required varies greatly
area1=150*10^-4;
flux_den=phi/area1;
mr=800;
H=flux_den/(mu*mr);
len=0.5;
mmf_required1=len*H;
tot_mmf=mmf_required+mmf_required1;
disp(tot_mmf,"the mmf required is (in AT)");
//H of the air gap is rounded off greatly in textbook so the answer is inaccurate, here the accurate value is used for the calculation
