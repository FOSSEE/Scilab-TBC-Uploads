//Example 6.7, page 138
clc;
v1=400/sqrt(3)//in v
ws=(2*%pi*1000)/60//angular f
x=1//resistance in ohm
T_max=(3*v1^2)/(ws*2*x)
//disp(T_max)
j=10//in kg-m2
s1=.05
s_maxT=0.2
a=(1.95^2-1)/(2*s_maxT)
temp=a+(.2*log(1.95))
r=((10*ws)/(2*T_max))*(temp)
//disp(r)
Extra_R=r-(.2)
a=(1.95^2-1)/(2*1.45)
temp=a+(1.45*log(1.95))
t=((10*ws)/(2*T_max))*(temp)
//disp(t)
printf("Minimum time to bring rotor to rest is %f s",t)