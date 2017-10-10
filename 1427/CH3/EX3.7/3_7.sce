//ques-3.7
//Calculating average degree of polymerisation of a polymer sample
clc
//Polymers of DP
a1=400; p1=10;//Percentage of Type-1
a2=500; p2=15;//Percentage of Type-2
a3=600; p3=35;//Percentage of Type-3
a4=800; p4=15;//Percentage of Type-4
a5=1000; p5=25;//Percentage of Type-5
Avg_deg=(a1*p1+a2*p2+a3*p3+a4*p4+a5*p5)/(p1+p2+p3+p4+p5);//Average degree
printf("Average degree of polymerisation is %d.",Avg_deg);
