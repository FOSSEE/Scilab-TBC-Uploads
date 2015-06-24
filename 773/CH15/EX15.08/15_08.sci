//system//
s=%s;
sys=syslin('c',(30)/((s^2+2*s+2)*(s+3)))
nyquist(sys)
gm=g_margin(sys)
show_margins(sys,'nyquist')
printf("Since P=0(no of poles in RHP)=Poles of G(s)H(s) \n Here the number of zeros of 1+G(s)H(s) in the RHP is zero \n Hence the system is stable")     
if (gm<=0)
  printf("system is unstable")
else 
  printf("system is stable")
  end 
