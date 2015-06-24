//time delay ,propogaion velocity,propagation delay
//given
clc
L=500D-9//H/m
C=30D-12//F/m
td=sqrt(L*C)//time delay for 1 m long cable 
vp=1/3.87d-9//m/s
C1=C*10//capacitance of 10 m cable
L1=L*10//inductance of 10 m cable
Ld=sqrt(L1*C1)//time delay for 10 m long cable 
Ld=round(Ld*1d+10)/1d+10///rounding off decimals
td=round(td*1d+11)/1d+11///rounding off decimals
disp(Ld*1d+9,vp,td*1d+9,'the time delay in nanoseconds ,propogaion velocity in meter/second,propogation delay over a cable length in nanoseconds')


