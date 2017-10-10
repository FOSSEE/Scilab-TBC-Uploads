
clc
printf("\n")
//given
I=40//lb ft2
n=500//rpm
w=%pi*n/30//angular velocity
wp=2*%pi/5//angular velocity of precession
I1=I/32.2
T=I1*w*wp//gyroscopic couple
printf("the couple supplied to the shaft= %.2f lb ft\n",T)
