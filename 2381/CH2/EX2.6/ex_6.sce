//Example 6 // relaxation time ,frequency ,energy ,time ,rate and number of vibrations
clc;
clear;
close;
k=20;//N/m
m=5//N-s/m
wo=sqrt(k/m);//
v1=2;//m/s
to=m/v1;//seconds
disp(to,"relaxation time is,(seconds)=")
w=wo*(1-(1/(2*wo*to))^2);//
lf=w/(2*%pi);//vibration/s
disp(lf,"linear frequency is,(vibration/s)=")
a=1;//
e=((1/2)*m*a^2*wo^2);//joule
disp(e,"energy is ,(joule)=")
tm=v1*to;//seconds
disp(tm,"time taken in fall of amlitude to 1/e value is ,(seconds)=")
disp(tm,"time taken in fall of velocity amplitude to 1/2 value is,(seconds)=")
tr=to;//
disp(tr,"time taken in fall of energy to 1/e value is,(seconds)=")
eng=(1/2)*m*a*v1^2*(2/tm);//
disp("rate of loss of energy at t=0 seconds is "+string(eng)+" J/s and at any time is "+string(eng)+"e^-2*t/"+string(tm)+" J/s ")
rel=((eng*2*%pi)/wo);//J/s
disp("rate of loss of energy per cycle at t=0 seconds is "+string(rel)+" J/s and at any time is "+string(rel)+"e^-2*t/"+string(tm)+" J/s ")
nv=tm/((2*%pi)/wo);//
disp(nv,"number of vibratios made are,=")
