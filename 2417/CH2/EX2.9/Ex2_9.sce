clear;
clc;
printf("\t\t\tProblem Number 2.9\n\n\n");
// Chapter 2: Work, Energy, and Heat
// Problem 2.9 (page no. 70) 
// Solution

m=1500; //Unit:kg //m=mass
V1=50; //Km/hour V1=Velocity before it is slowed down
//V1=(50*1000 m/hour)^2/(3600 s/hour)^2 
KE1=(m*(V1*1000)^2/3600^2)/2; //KE1=Initial kinetic energy //Unit:Joule

//After slowing down
V2=30; //Unit:KM/hour //V2=Velocity after it is slowed down
//V2=(30*1000 m/hour)^2/(3600 s/hour)^2 
KE2=(m*(V2*1000)^2/3600^2)/2; //KE2=After slowing down, the kinetic energy //Unit:Joule
 
KE=KE1-KE2; //KE=Change in kinetic energy //Unit:Joule
printf("Change in kinetic energy is %f kJ",KE/1000);
