clear;
clc;
close;
disp("Example 5.2")
Md=2.65
Mx=Md
//for Mx=2.65, from normal shock table 
My=0.4996
M1=My
//from isentropic table for M1=0.5, 
A=1.34
//for Md=2.65, from isentropic table (A=A1/Acr)
A1=3.036
Af=A1/A
//from isentropic table Af, 
Mth=2.35
//for Mth=2.35, from normal shock table
p=0.5615 //p=pty/ptx
disp(p,"Maximum total pressure recovery:")