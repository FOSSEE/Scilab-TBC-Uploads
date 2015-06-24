s=%s; 
num=(s^2+6*s+10); 
den=(s^2+2*s+10); 
t=syslin('c',num/den); 
clf; 
evans(t); 
mtlb_axis([-5 5 -5 5]);
