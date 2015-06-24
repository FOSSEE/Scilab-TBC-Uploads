clc;
// Chapter 2 Switched communication systems
//Example 2.8,page no 129
//given
S=1000//no of subscribers
T=2.4/60//avarage duration of calls in hours
A=60//rate of traffic flow
C=A/T//Tatol no of call in busy hour
mprintf('Total no of call in busy hour is:%f calls per Hour\n',C)
CR=C/S//busy hour calling rate
mprintf('Busy hour calling rate is:%f \n',CR)
SCL=30//no of call lost per hour

B=SCL/(C+SCL)//grade of service
mprintf('grade of service is: %f',B)
