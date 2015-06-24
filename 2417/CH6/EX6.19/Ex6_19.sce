clear;
clc;
printf("\t\t\tProblem Number 6.19\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.19 (page no. 262) 
// Solution

//from the equation, deltas/cv = (k*log(v2/v1))+ log(p2/p1) //change in entropy
k=1.4; //k=cp/cv //ratio of specific heats
//deltas=(1/4)*cv //so, 
// 1/4= (k*log(v2/v1))+ log(p2/p1)
v2=1/2; //Because,v2=(1/2)*v1  //initial specific volume 
v1=1;   //final specific volume
p2byp1=exp((1/4)-(k*log(v2/v1))); //increase in pressure
printf("p2/p1=%f\n",p2byp1);
printf("So,increase in pressure is %f ",p2byp1);
