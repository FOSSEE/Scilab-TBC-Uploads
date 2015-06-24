//effect of addition of zeroes
s=%s;
sys1=syslin('c',1/(s*(s+1)*(2*s+1)))//taking T1=1,T2=2
nyquist(sys1)
show_margins(sys1,'nyquist') 
sys2=syslin('c',(3*s+1)/(s*(s+1)*(2*s+1)))//Td=3
//nyquist(sys2)
//show_margins(sys2,'nyquist')  
printf("these two plots show that addition of poles increases stability") 