//Example No. 5.23
clc;
clear;
close;
format('v',9);

//Given Data : 
T1=40;//N-m
N1=500;//rpm
J=0.01;//N-m_sec^2/rad
T2=100;//N-m
N2=1000;//rpm
disp("Te=J*d(omega)/dt+D*omega+TL");
d_omegaBYdt=(T2-T1)/J;//
//t=omega/d_omegaBYdt+A;
omega1=N1*2*%pi/60;//rad/s
t=0;//s(initial time)
A=t-omega1/d_omegaBYdt;//
omega2=N2*2*%pi/60;//rad/s
t=omega2/d_omegaBYdt+A;//s
disp(t,"Time taken by the motor in sec :  ");
