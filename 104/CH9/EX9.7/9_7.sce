//stability of non minimum phase loop transfer_function
s=%s;
sys=syslin('c',1/(s+2)*(s^2+4))
nyquist(sys)
show_margins(sys,'nyquist')
Z=0//no of zeroes of 1+G(s)H(s) in RHP(for sys to be stable)
P=0//no of poles in RHP
Pw=2//no of poles on jw axis including origin
theta=(Z-P-0.5*Pw)*180
disp(theta,"for stability theta=")
printf("theta from nyquist_plot = 135 \n hence system is unstabe")