clear;
clc;
close;
disp("Example 5.4")
M0=1.4
//from normal shock table 
p=0.9582 //p=pt2/pt0
M1=M0
//from isentropic table:
A=1.115 //A=A1/Acr
A11=1.1 //A11=Ax/A1
Af=A11*A
//from normal shock table for M>1
Mx=1.56
//from normal table
p1=0.91 //p=pt2/pt0
p2=p
disp(p,"(a)The best backpressure :")
disp(p1,"(b)The supercritical mode inlet total pressure recovery:")
disp(p2,"(c)Inlet pressure recovery in subcritical mode with 10% spillage:")