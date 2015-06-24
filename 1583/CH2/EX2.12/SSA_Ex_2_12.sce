clc
//Chapter 2:Small Signal Amplifiers
//example 2.12 page no 53
//given
Aa=10^4//open loop gain
Rf=10^4//feedback resistance
Ri=100//input resistance
Av=-(Rf/Ri)/(1+(Ri+Rf)*(Aa*Ri))//actual amplifier gain
disp(Av,'the actual amplifier gain is ')
