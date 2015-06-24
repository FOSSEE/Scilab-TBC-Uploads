//To find  linear and angular velocity and acceleration
clc
//Given:
OC=150/1000, PC=600/1000, CD=150/1000 //m
N=450 //rpm
//Solution:
//Refer Fig. 15.6
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//By measurement,
OM=145/1000, CM=78/1000, QN=130/1000, NO=56/1000 //m
//Velocity and acceleration of alider:
//Calculating the velocity of the slider P
vP=omega*OM //m/s
//Calculating the acceleration of the slider P
aP=omega^2*NO //m/s^2
//Velocity and acceleration of point D on the connecting rod:
//Calculating the length od CD1
CD1=CD/PC*CM //m
//By measurement,
OD1=145/1000, OD2=120/1000 //m
//Calculating the velocity of point D
vD=omega*OD1 //m/s
//Calculating the acceleration of point D
aD=omega^2*OD2 //m/s^2
//Angular velocity and angular acceleration of the connecting rod:
//Calculating the velocity of the connecting rod PC
vPC=omega*CM //m/s
//Calculating the angular velocity of the connecting rod
omegaPC=vPC/PC //rad/s
//Calculating the tangential component of the acceleration of P with respect to C
atPC=omega^2*QN //m/s^2
//Calculating the angular acceleration of the connecting rod PC
alphaPC=atPC/PC //rad/s^2
//Results:
printf("\n\n Velocity of the slider P, vP = %.3f m/s.\n\n",vP)
printf(" Acceleration of the slider P, aP = %.1f m/s^2.\n\n",aP)
printf(" Velocity of point D, vD = %.3f m/s.\n\n",vD)
printf(" Acceleration of point D, aD = %.2f m/s^2.\n\n",aD)
printf(" Angular velocity of the connecting rod, omegaPC = %.3f rad/s.\n\n",omegaPC)
printf(" Angular acceleration of the connecting rod PC, alphaPC = %.2f rad/s^2.\n\n",alphaPC)