//To find the angular velocities
clc
//Given:
m1=0.7,m2=2.4 //kg
k1=270/1000,k2=185/1000,h1=0.25,DL=0.2,CM=0.275 //m
//Solution:
//Calculating the angular velocity of hammer just before impact
h=h1*(1-cos(20*%pi/180))
omega=sqrt(m1*9.81*h*2/(m1*k1^2)) //rad/s
//Calculating the relative linear velocity
RLV=0.8*omega*CM
//Calculating the values of angular velocities
//The two equations we get in terms of omegaA and omegaB are
//DL*omegaA-CM*omegaB=RLV                                            .....(i)
//m1*k1^2*(omega-omegaB)=.275/.2*m2*k2^2*omegaA, or
//2.21*omegaA+omegaB=2.01                                            .....(ii)
A=[DL -CM; 2.21 1]
B=[RLV; 2.01]
V=A \ B
//Results:
printf("\n\n The angular velocity of the anvil A, omegaA = %.2f rad/s.\n",V(1))
printf(" The angular velocity of the hammer B, omegaB = %.2f rad/s, i.e. %.2f rad/s, in the reverse direction.\n\n",V(2),V(2)*-1)