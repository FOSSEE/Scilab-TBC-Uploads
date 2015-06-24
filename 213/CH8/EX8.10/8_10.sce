//To find velocity, torque and acceleration
clc
//Given:
NAO=100 //rpm
OA=150/1000,AB=600/1000,BC=350/1000,CD=150/1000,DE=500/1000 //m
dA=50/1000,dB=dA,rA=dA/2,rB=dB/2 //m
pF=0.35 //N/mm^2
DF=250 //mm
//Solution:
//Refer Fig. 8.21
//Calculating the angular speed of the crank AO
omegaAO=2*%pi*NAO/60 //rad/s
//Calculating the velocity of A with respect to O
vAO=omegaAO*OA //m/s
vA=vAO
//By measurement from the velocity diagram, Fig. 8.21(b),
vBA=1.65,vBC=0.93,vB=vBC,vED=0.18,vEO=0.36,vE=vEO,vF=vE //m/s
//Calculating the velocity of D with respect to C
vDC=vBC*CD/BC //m/s
//Calculating the angular velocity of B with respect to A
omegaBA=vBA/AB //rad/s
//Calculating the angular velocity of B with respect to C
omegaBC=vBC/BC //rad/s
//Calculating the rubbing velocity of pin at A
vrA=(omegaAO-omegaBA)*rA //The rubbing velocity of pin at A, m/s
//Calculating the rubbing velocity of pin at B
vrB=(omegaBA+omegaBC)*rB //The rubbing velocity of pin at B, m/s
//Calculating the force at the pump piston at F
FF=pF*%pi/4*DF^2 //N
//Calculating the force required at the crankshaft A
FA=FF*vF/vA //N
//Calculating the torque required at the crankshaft
TA=FA*OA //N-m
//Calculating the radial component of the acceleration of A with respect to O
arAO=vAO^2/OA //m/s^2
//Calculating the radial component of the acceleration of B with respect to A
arBA=vBA^2/AB //m/s^2
//Calculating the radial component of the acceleration of B with respect to C
arBC=vBC^2/BC //m/s^2
//Calculating the radial component of the acceleration of E with respect to D
arED=vED^2/DE //m/s^2
//By measurement from the acceleration diagram, Fig. 8.21(c),
aBC=9.2,aB=aBC,aBA=9,aE=3.8 //m/s^2
//Calculating the acceleration of D
aD=aBC*CD/BC //m/s^2
//Results:
printf("\n\n The velocity of the cross-head E, vE = %.2f m/s.\n",vE)
printf(" The rubbing velocity of pin at A = %.3f m/s.\n",vrA)
printf(" The rubbing velocity of pin at B = %.3f m/s.\n",vrB)
printf(" The torque required at the crankshaft, TA = %d N-m.\n",TA)
printf(" The acceleration of the crosshead E, aE = %.1f m/s^2.\n\n",aE)