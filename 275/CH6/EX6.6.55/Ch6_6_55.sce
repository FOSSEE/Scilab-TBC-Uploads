clc
disp("Example 6.55")
printf("\n")
disp("Calculate Bandwidth with feedback")
printf("Given")
disp("Open loop voltage gain=2*10^5 \n")
disp("Break frequency is 5Hz,10% negative feedback\n")
A=2*10^5
B=0.1
Fi=5
//bandwidth with feedback
Fb=Fi*(1+A*B)
printf("Bandwidth with feedback is %f hz\n",Fb)
