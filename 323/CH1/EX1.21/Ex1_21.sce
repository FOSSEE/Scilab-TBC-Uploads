//Chapter 1,Example 1.21,Pg1.26
clc;
disp("Refer to the figure shown in the question")
disp("Let the branch current be as follows")
disp("IOA=x")
disp("IOB=1-x")
disp("IAB=y")
disp("IBC=1-x-y")
disp("IAC=x+y")
A=[3 -3;9 12]
B=[2;4]
XY= A\B 
x=XY(1,1)
y=XY(2,1)
IOA=x
IOB=1-x
IAB=y
IBC=1-x-y
IAC=x+y
printf("\n IOA=%.2f A \n",IOA)
printf("\n IOB=%.2f A \n",IOB)
printf("\n IAB=%.3f A \n",IAB)
printf("\n IBC=%.3f A \n",IBC)
printf("\n IAC=%.3f A \n",IAC)
