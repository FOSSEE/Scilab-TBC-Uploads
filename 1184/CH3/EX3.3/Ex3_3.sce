//Example 3-3, Page No - 106

clear 
clc

Pc = 30
m=0.85

Pt = Pc*(1+ (m^2/2))

Psb_both =Pt-Pc
Psb_one = Psb_both/2

printf('The total power is %.1f watt \n The power in one sideband is %.1f watt',Pt,Psb_one)
