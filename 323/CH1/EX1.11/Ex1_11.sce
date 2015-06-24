//Chapter1,Example1.11,Pg1.14
function [R2] = myfunction(R1)
    temp1=t1
    temp2=t2
    a=a0
    R2=R1*(1+a0*(temp2-temp1))
endfunction
function[alpha]=coefficient(a1)
    temp1=t1
    temp2=t2
    alpha=a1/(1+a1*(temp2-temp1))
    endfunction
clc;
t1=30
t2=50
a0=0.003
A1=coefficient(a0)
r1=myfunction(150)
a0=0.002
A2=coefficient(a0)
r2=myfunction(350)
printf("\n Series combination=%.0f ohms \n",r1+r2)
printf("\n Parallel combination=%.2f ohms \n",r1*r2/(r1+r2))
printf("\n For first coil a50=%.4f per degree C \n",A1)
printf("\n For second coil a50=%.5f per degree C \n",A2)

