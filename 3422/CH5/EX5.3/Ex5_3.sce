//Example 5.3, page 104
clc
s=.05//slip
x=1//ie x1+x2
s_max=((1-s**2)/(2*log(1/s)))**(1/2)//max slip
//disp(s_max)
R2_opt=x*s_max
ws=(2*%pi*1000)/60//angular frequency
v1=400/sqrt(3)//voltage
j=10//angular V
Tmax=(3*v1**2)/(ws*2*x)
Tmin=((j*ws)/(2*Tmax))*(((1-s**2)/(2*R2_opt))+((R2_opt*log(1/s))))
printf("\n The value of T_min is %f sec ",Tmin)