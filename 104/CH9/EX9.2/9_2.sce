//nyquist plot
s=%s;
sys=syslin('c',s*(s^2+2*s+2)/(s^2+5*s+1))
nyquist(sys)
show_margins(sys,'nyquist')
printf("Since P=0(no of poles in RHP)=Poles of G(s)H(s) \n here the number of zeros of 1+G(s)H(s) in the RHP is N>0 \n hence the system is unstable")     


