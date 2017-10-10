//Chapter2, Ex2.6,Pg 2.11
function [R] = deltatostar(R1,R2,R3,n)
    Rtotal=R1+R2+R3
    if(n==1)
        R=R1*R2/Rtotal
    elseif(n==2)
        R=R2*R3/Rtotal
    else
        R=R1*R3/Rtotal
            end
endfunction
clc;
disp("Refer to the diagram shown in the figure")

r1=deltatostar(20,5,15,1) //Converting delta network to star network
r3=deltatostar(20,5,15,2)
r2=deltatostar(20,5,15,3)
r1'=r1
R1=r3+2
R2=r2+30
r1=deltatostar(R1,R2,30,1)
r2=deltatostar(R1,R2,30,2)
r3=deltatostar(R1,R2,30,3)
Req=1/(1/(r1'+r1+10) + 1/(15+r3)) + r2
printf("\n The equivalent resistance R= %.2f ohms\n",Req)