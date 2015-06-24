//Chapter 15_Phase Locked Loops
//Caption : Second Order Butterworth Filter
//Example 15.4: A Synthesizer using PLL has Kv=5*%pi rad/s. What value of low-pass filter bandwidth should be used so that the closed-loop system approximates a second-order Butterworth filter?
//Solution:
clear;
clc; 
//For Butterworth filter the damping ratio(Dr) is
Dr=0.707;
Kv=5*%pi;
Wl=Kv*(2*Dr)^2;//since (Wl/Kv)^2=2*Dr
disp('rad/sec',Wl,'low pass filter bandwidth')
// BW for closed loop system is
BW=sqrt(Kv*Wl);// since BW=Wn, where Wn=natural frequency,BW=bandwidth of closed loop system
Wn=real(BW);
t=2.2/Wn;
disp('rad/sec',BW,'bandwidth of closed loop system is:')
disp('sec',t,'corresponding system rise time is:')