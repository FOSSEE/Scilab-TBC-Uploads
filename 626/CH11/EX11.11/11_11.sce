clear;
clc;
close;
disp("Example 11.11")
 
p=7 //in MPa, 
n=0.5 //and 
a=5 //cm/s 
Tdg=15 //in degree C
Td=15+273 //in K
br=0.002 //per degree C
pk=0.004 //per degree C
t=60//s, 

DT=30 // temp difference in degree C
pc=p*(1+pk*DT)
disp(pc,"(a)The new chamber pressure when the initial grain temp. is 45 degree C in MPa")
r=a*(pc/p)^n
r=r*(1+br*DT) //correcting for the effect of the grain temperature on burning rate.
disp(r,"Burning rate when grain temp. is 45 degree C")
L=a*t/100
tb=L*100/r //time to burn 3m of end burning grain at 5.61cm/s
tbn=t*(p/pc) //burn time for a constant total impulse

dt=t-tb
disp(dt,"(b)The corresponding reduction in burn time in seconds:")









