//stability of non minimum phase loop transfer_function
s=%s;
sys=syslin('c',(s-1)/s*(s+1))
nyquist(sys)
show_margins(sys,'nyquist')
P=0//no of poles in RHP
Pw=1//no of poles on jw axis including origin
theta=90//as seen from nyquist plot
Z=(theta/180)+0.5*Pw+P
disp(Z,"Z=")
printf("Z is not equal to 0. \n hence system is unstabe")