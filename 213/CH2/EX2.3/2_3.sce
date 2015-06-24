//To Find the Velocity
clc
//Given:
//Initial parameters
v0=100 //kmph
t0=0
//Parameters at the end of 40 seconds
v1=90/100*v0 //kmph
t1=40 //seconds
//Solution:
//The acceleration is given by, a=(-dv/dt)=k*v
//Integrating, we get ln(v)=-k*t+C
//Calculating the constant of integration
C=integrate('1/v','v',1,100)
//Calculating the constant of proportionality
k=(C-2.3*log10(90))/40
//Time after 120 seconds
t2=120 //seconds
//Calculating the velocity after 120 seconds
v120=10^((-k*t2+C)/2.29)
//Results:
printf("\n\n The velocity at the end of 120 seconds, v120 = %.1f kmph.\n\n",v120)