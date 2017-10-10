// Example 9.3
// Analysis of a Relay Driver
R_eq=10+15; // from figure 9.13(a)
L=400*10^-3;
tau=L/R_eq;
V=5; // DC voltage source
I_ss=5/25; // steady state value of current in the circuit
t=0:10^-3:30*10^-3;
i_L1=I_ss*(1-%e^(-t/tau)); // 0<t<=30*10^-3;
// the relay closes at time t1 when i_L1(t1)=150*10^-3;
// Solving equation 200*(1-%e^(-t1/16))=150;
t1= -tau*log(1-150/200);
i_L2_peak= I_ss*(1-exp(-30/16)); // Value of current at the end of the pulse
// After the pulse is over,the exponential decay of the current becomes
t3=0.030:0.001:0.05
i_L2=i_L2_peak*exp(-(t3-30*10^-3)/tau);
// the relay then opens at t2 when i_L2(t2)=40*10^-3;
// solving equation 169*exp(-t2/16)=40;
t2= (30*10^-3)-tau*log(40/169)
t_int=t2-t1;
plot(t,i_L1,t3,i_L2)
xlabel('t')
ylabel('i_L(t)')
title('Current Waveform')
disp(t_int,"Relay remains closed over the interval(sec)=");
