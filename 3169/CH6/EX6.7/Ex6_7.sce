//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 6.7
//calculation of peak value of output voltage and highest resonant frequency produced

//given data
V=10*10^3//voltage(in V) at primary winding
L1=10*10^-3//inductance(in H)
L2=200*10^-3//inductance(in H)
K=0.6//coefficient of coupling
C1=2*10^-6//capacitance(in Farad) on primary side
C2=1*10^-9//capacitance(in Farad) on secondary side

//calculation
M=K*sqrt(L1*L2)
omega1=1/sqrt(L1*C1)
sigma=sqrt(1-(K^2))
omega2=1/sqrt(L2*C2)
gama2=sqrt(((omega1^2+omega2^2)/2)+sqrt(((omega1^2+omega2^2)/2)-(sigma^2*omega1^2*omega2^2)))
gama1=sqrt(((omega1^2+omega2^2)/2)-sqrt(((omega1^2+omega2^2)/2)-(sigma^2*omega1^2*omega2^2)))
fh=gama2/(2*%pi)//highest frequency
V2p=(V*M)/(sigma*L1*L2*C2*(gama2^2-gama1^2))

printf('The value of highest resonant frequency produced is %3.2f kHz',fh*10^-3)
printf('\nThe peak value of output voltage is %3.2f kV',V2p*10^-3)

//gama1 and gama2 are imaginary numbers....Moreover their magnitudes will also be same....so peak value of output voltage from equation is zero
