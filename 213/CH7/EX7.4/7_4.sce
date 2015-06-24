//To find velocity, angular velocity and rubbing speed
clc
//Given:
NBA=120 //rpm
AB=150/1000,DC=450/1000,BC=450/1000,dC=50/1000,rC=dC/2 //m
//Sloution:
//Refer Fig. 7.12
//Calculating the angular velocity of the crank AB
omegaBA=2*%pi*NBA/60 //rad/s
//Calculating the linear velocity of B with respect to A
vBA=omegaBA*AB //m/s
vB=vBA
//By measurement from the velocity diagram, Fig. 7.12(b),
vF=0.7,vCD=2.25,vCB=2.25 //m/s
//Calculating the angular velocity of DC
omegaDC=vCD/DC //rad/s
//Calculating the angular velocity of BC
omegaCB=vCB/BC //rad/s
//Calculating the rubbing speed at the pin C
vr=(omegaCB-omegaDC)*rC //The rubbing speed at the pin C,m/s
//Results:
printf("\n\n The velocity of block F, vF = %.1f m/s.\n",vF)
printf(" The angular velocity of DC, omegaDC = %d rad/s, anticlockwise about D.\n",omegaDC)
printf(" The rubbing speed at the pin C is %d m/s.\n\n",vr)