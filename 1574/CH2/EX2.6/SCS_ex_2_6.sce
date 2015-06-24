clc;
// Chapter 2 Switched communication systems
//Example 2.6,page no 128
//given
S=10000//no of subscribers
C=16000//Tatol no of call in busy hour
CR=C/S//busy hour calling rate
mprintf('Busy hour calling rate is:%f \n',CR)
T=2.6//avarage duration of calls in min

A=C*(T/60)//rate of traffic flow
mprintf('Rate of traffic flow is %f traffic unit ',A)
