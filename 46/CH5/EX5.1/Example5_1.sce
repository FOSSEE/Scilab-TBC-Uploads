//Example 5.1
tau=0.1;//min
xs=90;//degrees
A=10;//degrees
Y_inf=10;//degrees
Y_t=8;//degrees
//Substituting into Eq.(5.12) the appropriate values of Y_t,A,and tau gives
t=-0.1*logm(1-(Y_t/A));//min
disp('min',t,'time=')