//Ex 6.6
clc;clear;close;
format('v',5);
Ia=110;//A
Vs=480;//V
Ra=0.2;//ohm
P=6;//no. of poles
c=6;//no. of parallel paths
p=P/2;//no. of pair of poles
Z=864;//no. of conductors
fi=0.05;//Wb
emf=Vs-Ia*Ra;//V
N=emf/(2*Z/c*p/60*fi);//rpm
N=round(N);//rpm
disp(N,"(a) Speed in rpm");
Pm=Ia*emf;//W(Mechanical power developed)
M=Pm/(N/60)/(2*%pi);//Nm(Torque)
disp(M,"(b) Gross torque developed(Nm)");
