s=%s; 
num=(s+12); 
den=s*s*(s+20); 
t=syslin('c',num/den); 
clf; 
evans(t); 
mtlb_axis([-5 5 -5 5]);
