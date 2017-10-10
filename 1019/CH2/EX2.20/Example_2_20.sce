//Example 2.20
clear;
clc;

//Given
T1=300; //initial temperature in K
T2=400; //final temperature in K
W=1000; //work obtained in J

// To determine heat withdrawn from the reservoir
n=1-(T1/T2);//efficiency of the engine
q=W/n;//heat absorbed in J
mprintf('heat withdrawn from the reservoir = %f',q);
//end