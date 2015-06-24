//system//
s=%s;
sys=syslin('c',12/(s*(s+1)*(s+2)))
nyquist(sys) 
show_margins(sys,'nyquist')
gm=g_margin(sys)
if (gm<=0)
  printf("system is unstable")
else 
printf("system is stable");end;
  
