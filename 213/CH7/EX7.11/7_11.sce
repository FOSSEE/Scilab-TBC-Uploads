//To find velocity ratio
clc
//Given:
WC=2.5*1000,WD=4*1000 //N
OA=175/1000,AB=180/1000,AD=500/1000,BC=325/1000 //m
//Solution:
//Refer Fig. 7.26
//Assuming the speed of crank OA to be 'N'
//Calculating the angular velocity of crank OA
omegaAO=mulf('2*%pi/60','N')
//Calculating the velocity of A with respect to O
vAO=mulf('omegaAO','OA')
vA=vAO
//Assume the vector oa (i.e. velocity of A) as 20 m/s
N=20/(2*%pi/60*OA) //mm
//By measurement from the velocity diagram, Fig. 7.27(b),
vC=35,vD=21 //mm
//Calculating the velocity ratio between C and the ram D
r=vC/vD //The velocity ratio between C and the ram D
//Calculating the efficiency of the machine
eta=(WD*vD)/(WC*vC)*100 //%
//Results:
printf("\n\n The velocity ratio between C and the ram D is %.2f.\n",r)
printf(" The efficiency of the machine, eta = %d %s.\n\n",eta,'%')