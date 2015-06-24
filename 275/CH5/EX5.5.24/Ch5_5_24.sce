clc
disp("Example 5.24")
printf("\n")
disp("calculate closed-loop gain for the negative feedback amplifier")
printf("Given\n")
//voltage gain without feedback
Av=1000
//feedback factor
B=0.1
//voltage gain with feedback
Acl=Av/(1+(B*Av))
printf("closed loop gain of negative feedback amplifier is \n %f \n",Acl)