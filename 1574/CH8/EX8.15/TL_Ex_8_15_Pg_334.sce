clc
//Chapter8
//Example8.15, page no 334
//GivenR=0.01
x=10//line length
Zo=100// characteristic impedance
a=0.1// attenuation constant
Beta=0.05// phase constant
Is=20e-3// source current
Gamma=a+ %i*Beta// propagation constant

I=Is/cosh(Gamma*x)// received current

[I_r,I_i]=polar(I)

mprintf('The current received is= %f mA  at phase%f',1000*I_r,I_i*180/%pi)
