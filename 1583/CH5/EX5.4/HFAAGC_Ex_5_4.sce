clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.4 page no 155
//given
gm=2*10^-3//transconductance
Cgs=5*10^-12//equivalent Miller's input capacitance
Cgd=10^-12//equivalent Miller's output capacitance
Cds=10^-12
R=5*10^3
R_L=4.1*10^3
wz=2*10^9
CT=Cgs+Cgd*(1+gm*R_L)//total capacitance
Co=Cds+(Cgd*(1+gm*R_L)/(gm*R_L))//output capacitance
w1=(R*CT)^-1//pole due to input circuit
w2=(R_L*Co)^-1//pole due to output circuit
mprintf('the transfer function is found to be located at %3.2e rad/s \n the pole due to input circuit is %3.2e rad/s \n the pole due to output circuit is %3.2e rad/s ',wz,w1,w2)


