// Example 6.2, page no-371
clear
clc
//(a)
b=20
a=4
op=16
p=(op-a)*2/(b-a)
p_h=p*10
h=p_h-2-5
printf("(a)\nh = %dm",h)
//(b)
p1=1
t_op=((b-a)/2)*p1+4
printf("\n(b)\nTransmitter output =%d mA",t_op)
//(c)
p2=0.5
t_op1=((b-a)/2)*p2+4
printf("\n(c)\nTransmitter output =%d mA",t_op1)
