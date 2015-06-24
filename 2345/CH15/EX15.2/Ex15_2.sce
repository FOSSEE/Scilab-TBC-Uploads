//Resistance and BOT units
//Example 15.2(pg 393)
clc
clear
Vi=220//voltage in volts supplied by dynamo
Vo=200//voltage in volts required for lighting
I=40//current in Amperes
Pi=Vi*I//power output of dynamo
Po=Vo*I//power consumed for lighting
L=Pi-Po//line losses
R=L/(I^2)//resistance of lines since line losses=I^2*R
t=10//time in hrs
N=(Po*t)/1000//no of units of consumed in B.O.T units
Nw=(L*t)/1000//No of units wasted in B.O.T units
printf('(i)Resistance of lines is  %3.1f Ohms \n',R)
printf('(ii)No. of B.O.T units consumed in 10hrs is %3.2f B.O.T units\n',N)
printf('(iii)No. of B.O.T units wasted in 10hrs is %3.2f B.O.T units\n',Nw)
