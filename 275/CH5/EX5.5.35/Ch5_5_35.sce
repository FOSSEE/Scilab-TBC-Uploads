clc
disp("Example 5.35")
printf("\n")
disp("Estimate the closed loop upper cut-off frequency & total harmonic distortion")
printf("Given\n")
//open loop gain
Av=60000
//closed loop gain
Acl=300
//open loop upper cut-off frequency
F2OL=15*10^3
//closed loop upper cut-off frequency & Av/Acl=(1+BAv)
F2CL=F2OL*Av/Acl
//total harmonic distortion with feedback if there is 10% distortion without feedback
HD=10/(Av/Acl)
printf("closed loop upper cut-off frequency \n%f hz\n",F2CL)
printf("total harmonic distortion with feedback if there is 10per distortion without feedback \n%f\n",HD)
