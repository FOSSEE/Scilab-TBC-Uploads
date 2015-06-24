clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.5 page no 157
//given
gm=0.4//transconductance
rpi=260
Re=237//emitter resistance
RL=600//load resistance
Rs=500//source resistance
Vi=1//input voltage(asumme Vi=1)
R=rpi*Rs/(rpi+Rs)
Vo=-gm*RL*Re/(Re+Rs)//output voltage
Cgs=960*10^-12//equivalent Miller's input capacitance
Ci=206*10^-12//input capacitance
CT=Cgs+Ci//total capacitance
Co=4*10^-12//output capacitance
w1=(R*CT)^-1//pole due to input circuit
w2=(RL*Co)^-1//pole due to output circuit
disp('The high-frequency performance is determined by the input circuit The upper -3dB frequency of this amplifier is equal to w1')
mprintf('the upper 3dB frequency is %3.2e rad/s ',w1)
