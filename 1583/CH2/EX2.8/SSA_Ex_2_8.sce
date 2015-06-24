clc
//Chapter 2:Small Signal Amplifiers
//example 2.8 page no 42
//given
disp('Assuming Vi (input voltage)=1')
V1=(5+10^6)/(5+2*10^6)//voltage on the positive terminal
V2=10^6/(5+2*10^6)//the voltage on the inverting terminal
ed=V1-V2//differential voltage
ec=(V1+V2)/2//common-mode voltage
Ad=2*10^3//differentail gain
Ac=2*10^-3//common mode gain (here 20% of differentail gain)
Vo=Ad*ed+Ac*ec//actual amplifier output
mprintf('the voltage gain is %3.2e Volts',Vo)
