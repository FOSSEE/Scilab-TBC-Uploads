//example 11.3
clc; funcprot(0);
K=0.25;
Ap=16*16/12/12;
phi=30*%pi/180;
Nq=25;
q=110*50/1000;
sigmao=q/2;
p=4*16/12;
L=50;
FS=4;
Qu=q*Nq*Ap+K*sigmao*tan(0.8*phi)*p*L;
Qall=Qu/FS;
disp(Qall,"allowed load in kip");

