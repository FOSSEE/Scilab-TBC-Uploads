// Example 6.16;//gain
clc;
clear;
close;
gm=4000;//gain in micro second
Ro=10;//output resistance in killo ohms
Rd=10;// resistance in killo ohms
Rl=(Ro*Rd)/(Ro+Rd);//load resistance in killo ohms
A= -(gm*10^-6*Rl*10^3);//gain without feedback
R1=80;//resistance in killo ohms
R2=20;//resistance in killo ohms
Beta= -(R2/(R1+R2));//feedback factor
Af=(A/(1+A*Beta));//gain with feedback
disp(A,"gain without feedback is")
disp(Af," gain with feedback is")
