//To Find Centre of Percussion and Impulse
clc
//Given:
m=30 //kg
OG=1.05,h=OG,AG=0.15 //m
//Solution:
//Calculating the Frequency of Oscillation
n=20/43.5 //Hz
//Calculating the Equivalent Length of Simple Pendulum
L=9.81/(2*%pi*n)^2 //m
//Calculating the Distance of Centre of Percussion (C) from the Centre of Gravity (G)
CG=L-OG //m
//Calculating the Distance of Centre of Percussion (C) from the Knife Edge A
AC=AG-CG //m
//Calculating the Radius of Gyration of the Pendulum About O
kO=sqrt(L*h) //m
h1=h*(1-cos(60*%pi/180)) //m
//Calculating the Angular Velocity of the Pendulum
omega=sqrt(2*m*9.81*h1/(m*kO^2)) //rad/s
OA=OG+AG
//Calculating the Velocity of Striking
v=omega*(OA) //Velocity of Striking
//Calculating the Angular Velocity of the Pendulum Immediately After Impact
I=m*kO^2
LKE=55 //Loss of Kinetic Energy, N-m
omega1=sqrt(omega^2-LKE*2/I)
//Calculating the Impulses at Knife Edge A and at Pivot O (P and Q)
CLM=m*h*(omega-omega1) //Change of Linear Momentum
CAM=m*(kO^2-h^2)*(omega-omega1) //Change of Angular Momentum
//P+Q=Change of Linear Momentum and, 0.15P-1.05Q=Change of Angular Momentum.
//i.e., P+Q=CLM and 0.15P-1.05Q=CAM
//Variables Matrix
A=[1 1; 0.15 -1.05]
B=[CLM; CAM]
V=A \ B
P=V(1)
Q=V(2)
//Calculating the Change in Axis Reaction When the Pendulum is Vertical
CAR=m*(omega^2-omega1^2)*h //Change in Axis Reaction, N
//Results:
printf("\n\n The Distance of Centre of Percussion, AC = %.3f m.\n",AC)
printf(" The Velocity of Striking = %.2f m/s.\n",v)
printf(" The Impulse at the Knife Edge, P = %.1f N-s.\n",P)
printf(" The Impulse at the Pivot, Q = %.2f N-s.\n",Q)
printf(" The Change in Axis Reaction When the Pendulum is Vertical = %d N.\n\n",CAR)