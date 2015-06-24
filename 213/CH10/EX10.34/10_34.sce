//To find time required and energy lost
clc
//Given:
D=75/1000, R=D/2 //m
alpha=15 //degrees
mu=0.3
W=180 //N
NF=1000 //rpm
m=13.5 //kg
k=150/1000 //m
//Solution:
//Calculating the angular speed of the flywheel
omegaF=2*%pi*NF/60 //rad/s
//Calculating the torque required to produce slipping
T=mu*W*R*(1/sind(alpha)) //N-m
//Calculating the mass moment of inertia of the flywheel
IF=m*k^2 //kg-m^2
//Calculating the angular acceleration of the flywheel
alphaF=T/IF //rad/s^2
//Calculating the time required for the flywheel to attain full speed
tF=omegaF/alphaF //seconds
//Calculating the angle turned through by the motor and flywheel in time tF
theta=1/2*omegaF*tF //rad
//Calculating the energy lost in slipping of the clutch
E=T*theta //Energy lost in slipping of the clutch, N-m
//Results:
printf("\n\n Torque required to produce slipping, T = %.1f N-m.\n",T)
printf(" Time required for the flywheel to attain full speed, tF = %.1f s.\n",tF)
printf(" Energy lost in slipping of the clutch = %d N-m.\n\n",E)