//To Determine the vector of state probabilities at a specific time
//Page 624
clc;
clear;

P=[0.6,0.4;0.3,0.7]; //One Step Transition Matrix

Po=[0.8,0.2]; //Initial State Probability Vector

//Funtion to determine the Vector of State Probability
deff('x=VSP(y)','x=(Po*(P^y))') 

P1=VSP(1); //Vector of State Probability at Time t1
P4=VSP(4); //Vector of State Probability at Time t4
P8=VSP(8); //Vector of State Probability at Time t8

printf('\na) The Vector of State Probability at time t1 is\n')
disp(P1)
printf('\na) The Vector of State Probability at time t4 is\n')
disp(P4)
printf('\na) The Vector of State Probability at time t8 is\n')
disp(P8)
