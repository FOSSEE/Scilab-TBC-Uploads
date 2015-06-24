//system//
s=%s;
P1=1;
P2=2;
sys=syslin('c',1/((s+1)*(s+2)))
nyquist(sys) 
show_margins(sys,'nyquist')
printf("Since P=0(no of poles in RHP)=Poles of G(s)H(s) \n\n Here the number of zeros of 1+G(s)H(s) in the RHP is zero \n\n Hence the system is stable")     

