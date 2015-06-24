clc
disp("Example 5.23")
printf("\n")
disp("calculate closed-loop gain for the negative feedback amplifier")
printf("Given\n")
//voltage gain without feedback
Av=100000
//feedback factor
B=1/100
//voltage gain with feedback
Acl=Av/(1+(B*Av))
//when Av is changed by 50%
Av1=50*100000/100
Av2=Av+Av1
//voltage gain with feedback when Av changed by +50%
Acl1=Av2/(1+(B*Av2))
//voltage gain with feedback when Av changed by -50%
Av3=Av-Av1
Acl2=Av3/(1+(B*Av3))
printf("closed loop gain of negative feedback amplifier is \n %f \n",Acl2)