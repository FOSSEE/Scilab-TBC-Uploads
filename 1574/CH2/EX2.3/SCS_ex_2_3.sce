clc;
// Chapter 2 Switched communication systems
//Example 2.3,page no 125
//given
C=6000//Tatol no of call in busy hour
SC=5000//no of subscribers
CR=C/SC//busy hour calling rate
mprintf('Busy hour calling rate is:%f \n',CR)
T=2.5/60//avarage duration of calls in hours

A=C*T//rate of traffic flow
mprintf('Rate of traffic flow is %f traffic unit ',A)
