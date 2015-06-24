//Anti Aliasing filter considerations
//minimum stop band attenuation As
B=input('enter no. of bits');//no. of samples
n=input('enter band width in KHZ');
As=20*log10(2^B*sqrt(6))
//nomalised frequency
Vs=(10^(0.1*As)-1)^(1/(2*n))
fp=4;//pass edge frequency
fs=Vs*fp//stop band frquency
S=2*fs//sampling frequency
fa=S-fp//aliaed frequency
Va=fa/fp;
//Attenuation at aliased frequency
Aa=10*log10(1+Va^(2*n))