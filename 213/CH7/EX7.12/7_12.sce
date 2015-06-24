//To find velocity, angular velocity and torque
clc
//Given:
NAO=180 //rpm
OA=180/1000,CB=240/1000,AB=360/1000,BD=540/1000 //m
FD=2*1000 //N
DA=30/1000,DD=DA,rA=DA/2,rD=DD/2 //m
//Solution:
//Refer Fig. 7.28
//Calculating the angular velocity of the crank OA
omegaAO=2*%pi*NAO/60 //rad/s
//Calculating the velocity of A with respect to O
vAO=omegaAO*OA
vA=vAO
//By measurement fro the velocity diagram, Fig. 7.29(b)
vD=2.05,vBA=0.9,vBC=2.8,vDB=2.4 //m/s
//Calculating the angular velocity of the link AB
omegaAB=vBA/AB //rad/s
//Calculating the angular velocity of the link CB
omegaCB=vBC/CB //rad/s
//Calculating the angular velocity of the link BD
omegaBD=vDB/BD //rad/s
//Calculating the relative angular velocity at A
rvA=omegaCB-omegaAB+omegaBD //The relative angular velocity at A, rad/s
//Calculating the relative angular velocity at D
rvD=omegaBD //The relative angular velocity at D, rad/s
//Calculating the velocity of rubbing on the pin A
vrA=rvA*rA*1000 //The velocity of rubbing on the pin A, mm/s
//Calculating the velocity of rubbing on the pin D
vrD=rvD*rD*1000 //The velocity of rubbing on the pin D, mm/s
//Calculating the torque applied to crank OA
TA=FD*vD/omegaAO //N-m
//Results:
printf("\n\n The velocity of slider D, vD = %.2f m/s.\n",vD)
printf(" The angular velocity of the link AB, omegaAB = %.1f rad/s, anticlockwise about A.\n",omegaAB)
printf(" The angular velocity of the link CB, omegaCB = %.2f rad/s, anticlockwise about C.\n",omegaCB)
printf(" The angular velocity of the link BD, omegaBD = %.2f rad/s, clockwise about B.\n",omegaBD)
printf(" The velocity of rubbing on the pin A is %d mm/s.\n",vrA)
printf(" The velocity of rubbing on the pin D is %d mm/s.\n",vrD)
printf(" The torque applied to the crank OA, TA = %.1f N-m.\n\n",TA)