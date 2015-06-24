clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.7 page no 162
//given
gm=0.4//transconductance
RL=600//load resistance
Rs=500//source resistance
Avec=gm*RL//midband emitter to collector voltage gain
CM=(1-Avec)*10^-12//miller capacitance
C_M=CM/Avec//collector to ground miller capacitance
Ri=gm^-1
Av=Avec*(Ri/Rs)//midfrequency voltage gain
Co=(4+1)*10^-12//output capacitance
CT=(206+CM)*10^-12//toatl capacitance
R=(500^-1+300^-1+260^-1)^-1
w1=(R*CT)^-1//pole due to input circuit)
w2=(RL*Co)^-1//pole due to output circuit
mprintf('the mid frequency voltage gain %f \n the pole due to input circuit is %3.2e rad/s \n the pole due to output circuit is %3.2e rad/s ',Av,w1,w2)
