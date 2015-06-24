//system//
s=%s;
sys=syslin('c',1/(s^3*(s+2)))
nyquist(sys)
show_margins(sys,'nyquist')
printf("Since P=0(no of poles in RHP)=Poles of G(s)H(s) \n here the number of zeros of 1+G(s)H(s) in the RHP is N>0 \n hence the system is unstable")     


