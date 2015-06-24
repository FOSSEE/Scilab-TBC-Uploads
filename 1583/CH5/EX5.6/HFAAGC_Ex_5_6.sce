clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.5 page no 159
//given
s=poly(0,"s")
Vo=-(0.4-s*4*10^-12)*(966*10^3)
Vth=s^2*(79.6*10^-18)+s*(190.2*10^-9)+1
disp(Vo/Vth,'the transfer function is ')
wz=10^11//transfer function zero
w1=-5.5*10^6//pole due to input circuit
w2=-2.41*10^9//pole due to output circuit
mprintf('the transfer function zero is found to be located at %3.2e rad/s \n the pole due to input circuit is %3.2e rad/s \n the pole due to output circuit is %3.2e rad/s ',wz,w1,w2)

