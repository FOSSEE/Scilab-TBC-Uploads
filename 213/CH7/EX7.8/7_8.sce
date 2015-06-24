//To find speed and time ratio
clc
//Given:
NAO1=60 //rpm
O1A=85,rQ=50 //mm
//Solution:
//Refer Fig. 7.20 and Fig. 7.21
//Calculating the angular velocity of AO1
omegaAO1=2*%pi*NAO1/60 //rad/s
//Calculating the velocity of A with respect to O1
vAO1=omegaAO1*O1A //mm/s
vA=vAO1
//By measurement from the velocity diagram, Fig. 7.20(b),
vDO2=410 //mm/s
O2D=264 //mm
angleB1O2B2=60*%pi/180 //rad
funcprot(0) //To vary the Scilab function 'beta'
alpha=120,beta=240 //degrees
//Calculating the angular velocity of the quadant Q
omegaQ=vDO2/O2D //rad/s
//Calculating the linear speed of the rack
vR=omegaQ*rQ //mm/s
//Calculating the ratio of times of lowering and raising the rack
r=beta/alpha
//Calculating the length of stroke of the rack
L=rQ*angleB1O2B2 //mm
//Results:
printf("\n\n The linear speed of the rack, vR = %.1f mm/s.\n",vR)
printf(" The ratio of times of lowering and raising the rack is %d.\n",r)
printf(" The length of the stroke of the rack is %.2f mm.\n\n",L)