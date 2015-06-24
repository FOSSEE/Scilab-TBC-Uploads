//caption:determine_K,ts,tp,Mp
//example 6.10.13
//page 184
clc;
syms K;
s=%s;
G=sym('K/(s*(s+6))');
H=0.2;
CL=G/(1+G*H);
CL=simple(CL);
Wn=sqrt(K/5)
zeta=0.7//(given) damping ratio
//2*zeta*Wn=6
Wn=6/(2*zeta);
K=Wn^2*5;
ts=4/(zeta*Wn);//settling_time
Mp=exp((-zeta*%pi)/sqrt(1-zeta^2))*100;//%_peak_overshoot
tp=%pi/(Wn*sqrt(1-zeta^2));//peak_time
disp(Wn,"natural_frequency,Wn=");
disp(Mp,"%_max.peak_overshoot,Mp=");
disp(ts,"settling_time,ts=");
disp(tp,"peak_time,tp=");