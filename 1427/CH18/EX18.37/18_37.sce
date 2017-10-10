//ques-18.37
//Calculating final temperature of the gas
clc
q=1.42;
r=20;//ratio = P2/P1
T1=273;//initial temperature (in K)
T2=T1/(r^((1-q)/q));
printf("Final temperature is %.1f K.",T2);
