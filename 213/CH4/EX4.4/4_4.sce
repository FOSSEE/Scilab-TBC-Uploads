//To Find the Frequency of Oscillation
clc
//Given:
m=1,m1=2.5 //kg
s=1.8*10^3 //N/m
l=(300+300)*10^-3 //m
//Solution:
//Calculating the Mass Moment of Inertia of the System
IA=(m*l^2/3)+(m1*l^2) //kg-m^2
//Calculating the Ratio of Alpha to Theta
//delta=0.3*theta
//Restoring Force=s*delta=540*theta
//Restoring torque about A=540*theta*0.3=162*theta N-m ...(i)
//Torque about A= IA*alpha=1.02*alpha N-m              ...(ii)
//Equating (i) and (ii), 1.02*alpha=162*theta
alphabytheta=162/1.02
//Calculating the Frequency of Oscillation
n=1/(2*%pi)*sqrt(alphabytheta)
//Results:
printf("\n\n The Frequency of Oscillation, n = %.2f Hz.\n\n",n)