//To find weight and coefficient of friction
clc
//Given:
theta=30 //degrees
P1=180 //Pulling force, N
P2=220 //Pushing force, N
//Solution:
//Resolving the forces horizontally for the pull of 180N
F1=P1*cosd(theta) //N
//Resolving the forces for the push of 220 N
F2=P2*cosd(theta) //N
//Calculating the coefficient of friction
//For the pull of 180N, F1=mu*W-90*mu, or F1/mu-W=-90        .....(i)
//For the push of 220N, F2=W*mu+110*mu, or F2/mu-W=110      .....(ii)
A=[F1 -1; F2 -1]
B=[-90; 110]
V=A \ B
mu=1/V(1)
W=V(2)
//Results:
printf("\n\n The weight of the body, W = %d N.\n",W)
printf(" The coefficient of friction, mu = %.4f.\n\n",mu)