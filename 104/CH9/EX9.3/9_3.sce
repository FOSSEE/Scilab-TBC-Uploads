//stability of non minimum phase loop transfer_function
s=%s;
sys=syslin('c',(s^2-s+1)/s*(s^2-6*s+5))
nyquist(sys)
show_margins(sys,'nyquist')
printf("Z=0 hence sys is closed loop stable but as it is a non minimum phase loop_function it should satisfy angle criterion")
Z=0//no of zeroes of 1+G(s)H(s) in RHP
P=2//no of poles in RHP
Pw=1//no of poles on jw axis including origin
theta=(Z-P-0.5*Pw)*180
disp(theta,"theta=")
printf("theta from nyquist_plot = -90 \n hence system is unstabe")