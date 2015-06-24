clc
//Chapter 6:Three winding transformer
//example 6.2 page no 221
//given
k=1
R=50//resistor
R1=R*k
R2=R
R3=100
R4=R1/(1+k)
N=sqrt(R1/(2*R3))//turns ratio 
mprintf('the turns ratio %f \n R4=%d ',N,R4)
disp('the output voltage Eo= -I3.RL = E1/2')
