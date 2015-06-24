//consumer voltage and energy loss
//Example 15.1(pg 392)
clc
clear
R=0.2//total resistance of cable in ohms
I=200//current in A
t=100//time in hours
V=240//voltage in volts
c=0.8//cost of electrical energy in Rs per unit
V1=I*R//voltage drop in the cable
//(i)consumer voltage
Vc=V-V1
//(ii)Power loss in the cable
P=I*I*R//in watts
E=P*t/1000//energy loss in kWh
C=E*c//cost of energy loss in Rs.
printf('(i)Consumer voltage is %3.1f Volts \n',Vc)
printf('(ii)cost of energy loss is Rs %3.2f ',C)
