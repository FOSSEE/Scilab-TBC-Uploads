clc
//initialisation of variables
t=12//hp
N=1500//rpm
p=44760//N m
//CALCULATIONS
T=(t*p)/((2*%pi)*(N))//N.m
//RESULTS
printf('The fluid power motor turning at=% f N.m',T)
