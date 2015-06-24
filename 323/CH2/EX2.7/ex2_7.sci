//Chapter 2,Ex2.7,Pg2.13
function [r_1] = startodelta(r1,r2,r3) //Function that converts star network to equivalent delta network
    r_1=ones(1:3)
    Rtotal=(r1*r3 + r2*r3 + r1*r2)
    r_1(1)=Rtotal/r1
    r_1(2)=Rtotal/r2
    r_1(3)=Rtotal/r3
endfunction
function[r_2]=deltatostar(r1,r2,r3) //Function that converts delta network to equivalent star network
    Rtotal=r1+r2+r3
    r_2=ones(1:3)
    r_2(1)=r1*r2/Rtotal
    r_2(2)=r2*r3/Rtotal
    r_2(3)=r1*r3/Rtotal
    endfunction
clc;
disp("refer to the figure shown in the diagram")
R=startodelta(8,5,3)
R_1=R(2)*5/(R(2)+5) //Parallel combination of resistances
R_2=R(3)*4/(R(3)+4) //Parallel combination of resistances
R1=deltatostar(R_1,R(1),R_2)
Req=1/(1/(6+R1(1)) + 1/(4+R1(2))) +R1(3)
printf("\n The equivalent resistance R= %.2f ohms\n",Req) 