// Example 6.17;//gain
clc;
clear;
close;
R1=1.8;//resistance in killo ohms
R2=0.2;//resistance in killo ohms
Beta= (R2/(R1+R2));//feedback factor
A=100000;//gain without feedback
Af1=(A/(1+A*Beta));//gain with feedback
Af=(1/Beta);//AS A*Beta>>1
disp(Af," gain with feedback AS A*Beta>>1 is")
