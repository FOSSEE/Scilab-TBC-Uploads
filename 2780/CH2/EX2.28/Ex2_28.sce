clc
//to calculate diameter
//the difference of (n+p)th and nth dark ring is Dn+p^2-Dn^2=4nRlambda
N=12 //where N=n+p
n=4
D12=0.7 //diameter of 12th dark ring in cm
D4=0.4 //diameter of 4th dark ring in cm
//D12^2-D4^2=4pRlambda where p=8 ----eq(1)
//D20^2-D4^2=4pRlambda where p=16 -----eq(2)
//divide eq(2) by eq(1) ,we get
D20=sqrt((2*D12^2)-D4^2)
disp("the diameter of 20th dark ring is D20="+string(D20)+"cm")

