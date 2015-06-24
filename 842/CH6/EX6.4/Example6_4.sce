//clear//
//Example 6.4:Bode Plot
s = %s;
//Open Loop Transfer Function
H = syslin('c',[20000/(s^2+100*s+10000)]);//jw replaced by s
clf;
bode(H,0.01,10000)
