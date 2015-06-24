// Example 8.13 //optical power
clc;
clear;
close;
fdb=6;//
f=10^(fdb/10);//
e=1.6*10^-19;//electron charge
sndb=45;//signal to noise ration in dB
sn=(10^(sndb/10));//
h=6.63*10^-34;//planck constant
c=3*10^8;//m/s
e=1.6*10^-19;//
n=0.6;//efficneicny
ma=0.5*10^-3;//
k=1.38*10^-23;//boltzman constant
tk=300;//degree celcius
bw=8;//MHz
rl=50;//kilo ohms
po=((h*c)/(e*n*ma^2))*sqrt((8*k*tk*bw*10^6*f)/(rl*10^3))*sqrt(sn);//
disp(po*10^6,"average power incident in micro Watts is")
