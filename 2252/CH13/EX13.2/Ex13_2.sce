
//temp. rise of the motor at any time t is theta=theta_f-(theta_f-theta_1)*exp(-t/T)
theta_f=50//final steady temp rise
T=100//heating time constant in min
t=20//full load working period in min
//during cooling process, temp. decreases to theta_1=theta*exp(-t/T')
t=40//stationary period in min
T=140//cooling time constant in min
//solving simultaneous equations
a=[1 -exp(-20/100);-exp(-40/140) 1]
b=[50-50*exp(-20/100);0]
c=inv(a)*b
theta=c(1,1)
mprintf("Maximum temp attained=%f degree C", theta) 
