//effect of addition of poles
s=%s;
sys1=syslin('c',1/(s^2*(s+1)))//taking T1=1
nyquist(sys1)
show_margins(sys1,'nyquist') 
sys2=syslin('c',1/(s^3*(s+1)))
//nyquist(sys2)
//show_margins(sys2,'nyquist')  
printf("these two plots show that addition of poles decreases stability") 