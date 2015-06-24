//To find linear and angular velocity and acceleration
clc
//Given:
OC=200/1000, PC=700/1000 //m
omega=120 //rad/s
//Solution:
//Refer Fig. 15.5
OM=127/1000, CM=173/1000, QN=93/1000, NO=200/1000 //m
//Velocity and acceleration of the piston:
//Calculating the velocity of the piston P
vP=omega*OM //m/s
//Calculating the acceleration of the piston P
aP=omega^2*NO //m/s^2
//Velocity and acceleration of the mid-point of the connecting rod:
//By measurement,
OD1=140/1000, OD2=193/1000 //m
//Calculating the velocity of D
vD=omega*OD1 //m/s
//Calculating the acceleration of D
aD=omega^2*OD2 //m/s^2
//Angular velocity and angular acceleration of the connecting rod:
//Calculating the velocity of the connecting rod PC
vPC=omega*CM //m/s
//Calculating the angular velocity of the connecting rod PC
omegaPC=vPC/PC //rad/s
//Calculating the tangential component of the acceleration of P with respect to C
atPC=omega^2*QN //m/s^2
//Calculating the angular acceleration of the connecting rod PC
alphaPC=atPC/PC //ra/s^2
//Results:
printf("\n\n Velocity of the piston P, vP = %.2f m/s.\n\n",vP)
printf(" Acceleration of the piston P, aP = %d m/s^2.\n\n", aP)
printf(" Velocity of D, vD = %.1f m/s.\n\n",vD)
printf(" Acceleration of D, aD = %.1f m/s^2.\n\n",aD)
printf(" Angular velocity of the connecting rod PC, omegaPC = %.2f rad/s.\n\n",omegaPC)
printf(" Angular acceleration of the connecting rod PC, alphaPC = %.2f rad/s^2.\n\n",alphaPC)