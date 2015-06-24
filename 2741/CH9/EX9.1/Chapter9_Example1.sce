clc
clear
//Input data 
N=6000;//Number of particles in a system 
e=3;//The number of energy states with equal spacing 
n1=3000;//Number of particles in the lower level 
n2=2500;//Number of particles in the middle level 
n3=500;//Number of particles in the upper level 
n11=3001;//Number of particles in the lower level in the second case
n22=2498;//Number of particles in the middle level in the second case
n33=501;//Number of particles in the upper level in the second case 
g=1;//Let us assume the probability of locating a particle in a certain energy state is one

//Calculations 
P1=1/(2500*2499);//The probability in the first case 
P2=1/(3001*501);//The probability in the second case 
P=P2/P1;//Comparing the relative probabilities 

//Output 
printf('By comparing the relative probabilities P = %3.1f  \n (It means the transfer of one particle from the middle to the\n upper and the lower state has changed the probability by a factor %3.1f \n Hence both the distributions are not near the equilibrium state)',P,P)


