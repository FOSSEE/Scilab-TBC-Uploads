//To find velocity and resisting torque
clc
//Given:
NAD=100 //rpm
TA=50 //N-m
DA=300/1000,CB=360/1000,AB=CB,DC=600/1000 //m
eta=70/100 //%
//Solution:
//Refer Fig. 7.25
//Calculating the angular velocity of the crank AD
omegaAD=2*%pi*NAD/60 //rad/s
//Calculating the velocity of A with respect to D
vAD=omegaAD*DA //m/s
vA=vAD
//By measurement from the velocity diagram, Fig. 7.25(b),
vBC=2.25 //m/s
vB=vBC
//Calculating the angular velocity of the driven link CB
omegaBC=vBC/CB //rad/s
//Calculating the actual mechanical advantage
omegaA=omegaAD,omegaB=omegaBC
MAactual=eta*omegaA/omegaB
//Calculating the resisting torque
TB=eta*TA*omegaA/omegaB //N-m
//Results:
printf("\n\n The velocity of the point B, vB = %.2f m/s.\n",vB)
printf(" The angular velocity of the driven link CB, omegaBC = %.2f rad/s.\n",omegaBC)
printf(" The actual mechanical advantage, M.A.(actual) = %.2f.\n",MAactual)
printf(" The resisting torque, TB = %.1f N-m.\n\n",TB)