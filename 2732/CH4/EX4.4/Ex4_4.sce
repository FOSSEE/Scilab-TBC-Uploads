clc
//initialization of variables
clear
C=1000/3 //kg/cm^2
sigma_x=2*C
sigma_y=4*C
tau_xy=4*C
sigma_0=4*C
sigma_1=3+C*sqrt(2)
sigma_2=3-C*sqrt(2)
sigma_3=0
tau_oct=1/3*sqrt((sigma_1-sigma_2)^2+(sigma_2-sigma_3)^2+(sigma_3-sigma_1)^2)
tau_max=sigma_1/2
taU=1.885*C
tau_y=2*C
printf('Actual tau is %.3f',taU)
printf('\n tau_max at yield is %.3f',tau_y)
printf('\n Hence yielding doesn not occur according to Von-Miles condition \n but it occurs due to Tresca condition')
