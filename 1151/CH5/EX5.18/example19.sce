s=%s; 
num=(s^2-2*s+5); 
den=(s^2+1.5*s-1); 
t=syslin('c',num/den); 
clf; 
evans(t); 
mtlb_axis([-5 5 -5 5]);
