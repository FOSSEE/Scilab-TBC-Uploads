//stability of minimum phase loop transfer function
s=%s;
sys=syslin('c',1/(s*(s+2)*(s+10)))
nyquist(sys)
show_margins(sys,'nyquist') 
Z=0//no of zeroes of 1+G(s)H(s) in RHP
P=0//no of poles in RHP
Pw=1//no of poles on jw axis including origin
theta=(Z-P-0.5*Pw)*180
disp(theta,"theta=")
printf("theta from nyquist_plot = -90 \n hence system is stabe")