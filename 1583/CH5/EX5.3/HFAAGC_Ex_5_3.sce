clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.3 page no 153
//given
gm=2*10^-3//transconductance
Cgs=5*10^-12//equivalent Miller's input capacitance
Cgd=1*10^-12//equivalent Miller's output capacitance
Cds=1*10^-12
rd=13*10^3
R=5*10^3//source resistance
RL=(6*10^3*13*10^3)/(6*10^3+13*10^3)//total load resistance
Av=-gm*RL//voltage gain
R_L=RL*rd/(RL+rd)
CT=Cgs+Cgd*(1+gm*R_L)//total capacitance
Co=Cds+(Cgd*(1+gm*R_L)/(gm*R_L))//output capacitance
w1=(R*CT)^-1//pole due to input circuit
w2=(RL*Co)^-1//pole due to output circuit
mprintf('the voltage gain is %f \n the total capacitance is %3.2e pF \n the output capacitance is %3.2e pF \n the pole due to input circuit is %3.2e rad/s \n the pole due to output circuit is %3.2e rad/s ',Av,CT,Co,w1,w2)
