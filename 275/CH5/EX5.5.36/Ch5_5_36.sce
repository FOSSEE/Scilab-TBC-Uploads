clc
disp("Example 5.36")
printf("\n")
disp("calculate open loop cut-off frequency if the open loop gain is 200000")
printf("Given\n")
//open loop gain
Av=200000
//closed loop gain 
Acl=250
//upper cut-off frequency with feedback
F2CL=4*10^6
//upper cut-off frequency without feedback
F2OL=F2CL/(Av/Acl)
printf("upper cut-off frequency without feedback \n%f hz\n",F2OL)

