clc
w3=0.011
w2=0.009
w1=0.0118
P=101.325 //in bar
pw1=1.8
pw2=1.3
a=(w2-w3)/(w3-w1)
mprintf("ma1/ma2=%f\n",a)//ans vary due to roundoff error
pa1=P-pw1
pa2=P-pw2
V1=10
T1=293.15
T2=313.15
V2=(pa1*V1*T2)/(a*pa2*T1)
mprintf("V2=%fmetre-cube/min",V2)//ans vary due to roundoff error
