//Example 6.1, page 121
clc
T=172//in N-m
w=(2*%pi*960)/60
E=215//in V
Ia=(T*w)/E
Ra=.062//in ohm
v=220//in v
Eg=v+(Ia*Ra)
//disp(Eg)
N=960//in Rpm
S=(N*Eg)/E
//disp(S)
printf("\n The speed of shunt machine is %f rpm ",S)