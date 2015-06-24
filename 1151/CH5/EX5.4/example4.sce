s=%s; 
num=1; 
den=s*(s+1)*(s^2+4*s+5); 
t=syslin('c',num/den); 
clf; 
evans(t); 
mtlb_axis([-5 5 -5 5]);
