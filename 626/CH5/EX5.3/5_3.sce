clear;
clc;
close;
disp("Example 5.3")
Md=3.3 //from isentropioc  table 
A=5.629 // A=A1/Acr=A1/Ath
Mx=Md //from normal shock table 
My=0.4596
M1=My
//from isentropic table 
A11=1.425
pt=((1/A11-1/A)/(1/A))*100
Af=A/A11
//for Af=3.95, from isentropic table for M>1
M1th=2.95
disp(A,"Inlet design contraction ratio A1/Ath:")
disp(pt,"The % opening of the throat:")
disp(M1th,"Throat Mach no.:")