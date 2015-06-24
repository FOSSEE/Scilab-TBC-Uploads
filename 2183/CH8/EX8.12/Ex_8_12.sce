// Example 8.12 //optical power
clc;
clear;
close;
e=1.6*10^-19;//electron charge
sndb=55;//signal to noise ration in dB
sn=(10^(sndb/10));//
bw=5;//Mhz
r=0.5;//responsivity
cs=0.7;//signal attenuation
k=1.38*10^-23;//bolzman constant
tc=20;//degree celsius
tk=tc+273;//Kelvin
fdb=1.5;//
f=10^(fdb/10);//
rl=1;//mega ohms
x=((sn*4*k*tk*bw*10^6*f)/(rl*10^6));//
y=((2*sn*e*bw*10^6*r));//
ma=9/8;//
z=(2*ma*r^2*cs^2);//
s=poly(0,"s");//
p=-x-y*s+z*s^2;//
m=roots(p);//
disp(m(1,1)*10^6,"average incident power in micro Watts is")
