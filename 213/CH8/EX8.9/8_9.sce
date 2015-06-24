//To find velocity and accelerations
clc
//Given:
omegaAO1=100 //rad/s
O1A=100/1000,AC=700/1000,BC=200/1000,BD=150/1000,O2D=200/1000,O2E=400/1000,O3C=200/1000 //m
//Solution:
//Refer Fig. 8.19
//Calculating the linear velocity of A with respect to O1
vAO1=omegaAO1/O1A //m/s
vA=vAO1
//By measurement from the velocity diagram, Fig. 8.19(b),
vCA=7,vCO3=10,vC=vCO3,vDB=10.2,vDO2=2.8,vD=vDO2,vE=5.8,vEO2=vE //m/s
//Calculating the radial component of the acceleration of A with respect to O1
arAO1=vAO1^2/O1A //m/s^2
aAO1=arAO1,aA=aAO1
//Calculating the radial component of the acceleration of C with respect to A
arCA=vCA^2/AC //m/s^2
//Calculating the radial component of the acceleration of C with respect to O3
arCO3=vCO3^2/O3C //m/s^2
//Calculating the radial component of the acceleration of D with respect to B
arDB=vDB^2/BD //m/s^2
//Calculating the radial component of the acceleration of D with respect to O2
arDO2=vDO2^2/O2D //m/s^2
//Calculating the radial component of the acceleration of E with respect to O2
arEO2=vEO2^2/O2E //m/s^2
//By measurement from the acceleration diagram, Fig. 8.19(c),
aE=1200,atDO2=610 //m/s^2
aEO2=aE
aB=440 //Acceleration of point B, m/s^2
//Calculating the angular acceleration of the bell crank lever
alpha=atDO2/O2D //The angular acceleration of the bell crank lever, rad/s^2
//Results:
printf("\n\n Velocity of the point E on the bell crank lever, vE = %.1f m/s.\n",vE)
printf(" Acceleration of point B = %d m/s^2.\n",aB)
printf(" Acceleration of point E, aE = %d m/s^2.\n",aE)
printf(" Angular acceleration of the bell crank lever = %d rad/s^2, anticlockwise.\n\n",alpha)