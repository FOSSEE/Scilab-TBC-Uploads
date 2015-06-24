//To find the reduction of speed
clc
//Given:
P=4*1000 //W
I=140 //kg-m^2
N1=240 //rpm
//Solution:
//Calculating the angular acceleration at the commencement of operation
omega1=2*%pi*N1/60 //rad/s
//Calculating the energy supplied by the motor (E1) and the energy consumed in closing a revet in 1 second
E1=4000,E2=10000 //N-m
//Calculating the loss of kinetic energy of the flywheel during the operation
E=E2-E1 //N-m
//Calculating the kinetic energy of the flywheel at the commencement of operation
KEc=1/2*I*omega1^2 //Kinetic energy at the commencement, N-m
//Calculating the kinetic energy of the flywheel at the end of operation
KEe=KEc-E //Kinetic energy at the end, N-m
//Calculating the angular speed of the flywheel immediately after closing a revet
omega2=sqrt(KEe*2/I) //rad/s
//Calculating the reduction of speed
ReductionofSpeed=(omega1-omega2)*60/(2*%pi) //rpm
//Calculating the maximum rate at which the revets can be closed per minute
Rate=P*60/E2 //Maximum rate at which the revets can be closed per minute
//Results:
printf("\n\n The reduction of speed is %.1f rpm.\n",ReductionofSpeed)
printf(" The maximum rate at which rivets can be closed per minute is %d.\n\n",Rate)