// Example 11.8
// An Illustrative Bode Plot
s=poly(0,'s');
h=syslin('c',(s+200)^2/(10*s^2))
bode(h)
