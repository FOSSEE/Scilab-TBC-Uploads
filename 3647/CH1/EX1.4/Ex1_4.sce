//Tension Coupling calculation
clc
//initialisation of variables
w=30//tonf
m=100//tonf
w1=150//tonf
f=6000//lbf
h=2240//lbf
q=105//lbf
p=135//lbf
a=711.7//lbf
//CALCULATIONS
M=(q*h)/m//lbf
R=(w*h)/w1//lbf
T=M+R//lbf
A=f-T//lbf
T1=R+a//lbf
//RESULTS
printf('the Tension Coupling is=% f lbf',T1)
