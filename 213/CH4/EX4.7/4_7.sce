//To Find the Time of Swing
clc
//Given:
l=1.2 //m
theta=3*%pi/180 //rad
//Solution:
//Calculating the Distance Between the Knife Edge and C.G. of the Rod
h=1.2/2-.05 //m
//Calculating the Radius of Gyration of the Rod About C.G.
kG=l/sqrt(12) //m
//Calculating the Time of Swing of the Rod
tp=2*%pi*sqrt((kG^2+h^2)/(9.81*h)) //seconds
//Calculating the Minimum Time of Swing
tpmin=2*%pi*sqrt((2*kG)/9.81) //seconds
//Calculating Angular Velocity
omega=2*%pi/tp //rad/s
//Calculating Maximum Angular Velocity
omegamax=omega*theta //rad/s
//Calculating Maximum Angular Acceleration
alphamax=omega^2*theta //rad/s^2
//Results:
printf("\n\n The Time of Swing of the Rod, tp = %.2f seconds.\n",tp)
printf(" The Minimum Time of Swing, tp(min) = %.2f seconds.\n",tpmin)
printf(" The Maximum Angular Velocity, omega(max) = %.4f rad/s.\n",omegamax)
printf(" The Maximum Angular Acceleration, alpha(max) = %.3f rad/s^2.\n\n", alphamax)