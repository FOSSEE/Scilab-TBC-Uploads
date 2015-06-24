//multiple loop systems
s=%s
innerloop=syslin('c',6/s*(s+1)*(s+2))
nyquist(innerloop)
show_margins(innerloop,'nyquist')
printf("nyquist plot intersects jw axis at -1 so innerloop is marginally stable")
outerloop=syslin('c',100*(s+0.1)/(s+10)*(s^3+3*s^2+2*s+6))
//nyquist(outerloop)
show_margins(outerloop,'nyquist')
P=0//no of poles on RHP
Pw=2//no of poles on jw axis
theta=-(Z-P-0.5*Pw)*180
Z=0//for outer loop to be stable
disp(theta,"theta for stability=")
printf("theta as seen from nyquist plot is same as that required for stability \n hence outer loop is stable")