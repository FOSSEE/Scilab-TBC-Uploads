clc
disp("Example 6.32")
printf("\n")
disp("Calculate Gain & input voltage")
printf("Given")
disp("Rf=100K,R1=10K")
Rf=100*10^3
R1=10^4
//calculate voltage gain
Af=1+(Rf/R1)
Vo=4
//calculate input voltage
Vi=Vo/Af
//display values
printf("Closed loop gain =%f\n",Af)
printf("Input voltage=%f volt",Vi)
