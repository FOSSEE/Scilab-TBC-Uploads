//example-2.2
//page no-29
//given
//IN THE RUTHERFORD SCATTERING EXPERIMENT
//the no of particles scattered at
theta1=(%pi)/2  //radians
//is
N90=44  //per minute
//the number of particles scattered particales N is given by
//N=C*(1/(sin(theta/2))^4)  where C is propotionality constant
//solving above equation for C
C=N90*(sin(theta1/2))^4  
// now to find the no of particles scatering at 75 and 135 degrees
theta2=75*(%pi)/180  //radians
N75=C*(1/(sin(theta2/2))^4)  //per minute
theta3=135*(%pi)/180  //radians
N135=C*(1/(sin(theta3/2))^4)  //per minute
printf ("the no of particles scattered at 75 and 135 degrees are %d per minute and %d per minutes",N75,N135)
