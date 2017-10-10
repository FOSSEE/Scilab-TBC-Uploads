clear all
clc
close

//Elements of circuits
C1=0.125*1e-6;//in F
C2=1e-9;//in F

T1=250*1e-6;
T2=2500*1e-6;
alpha=4;
theta=T2/6;

X=(1+C2/C1)*1/alpha^2;
R1=alpha*theta/C2*(1-sqrt(1-X));//in ohm

R2=alpha*theta/(C1+C2)*(1+sqrt(1-X));//in ohm

//Circuit efficiency
eta=1/(1+(1+R1/R2)*C2/C1)
printf('Circuit efficiency %f',eta)
