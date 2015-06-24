//Chapter 29
clc
//Example 4
//given
T_half=3.83 //half life time of Radon in days
No=4*10^8 //Initial No .of Radon atoms 
lambda=0.693/T_half // in days
t=12 
N=No*exp(-(lambda*t))
disp(N,"a) No.of atoms remaining after 12 days is")
lambda_=lambda/(8.64*10^4)
R=lambda_*No
disp(R,"Initial activity of the radon sample in decay/sec is")


