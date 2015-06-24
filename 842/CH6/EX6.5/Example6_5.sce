//clear//
//Example 6.5:Bode Plot
s = %s;
//Open Loop Transfer Function
H = syslin('c',[(100*(1+s))/((10+s)*(100+s))]);//jw replaced by s
clf;
bode(H,0.01,10000)
