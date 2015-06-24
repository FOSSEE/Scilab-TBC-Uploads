clc
disp("Example 5.38")
printf("\n")
disp("calculate bandwidth,gain & harmonic distortion with feedback")
printf("Given\n")
//open loop gain
Av=1000
//bandwidth without feedback
BWol=500*10^3
//feedback factor
B=0.1
//bandwidth with feedback
BWcl=BWol*(1+(B*Av))
//closed loop gain
Acl=Av/(1+(B*Av))
//harmonic distortion if 15% negative feedback used
HDcl=15/(1+(B*Av))
printf("bandwidth with feedback is \n %f hz \n",BWcl)
printf("closed loop gain \n %f \n",Acl)
printf("Harmonic distortion with feedback \n %f \n",HDcl)