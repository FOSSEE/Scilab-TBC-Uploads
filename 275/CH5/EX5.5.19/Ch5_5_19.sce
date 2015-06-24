clc
disp("Example 5.19")
printf("\n")
disp("calculate upper cut-off frequency & voltage gain at lower cut-off frequency")
printf("Given\n")
//bandwidth of amplifier
BW=500*10^3
//lower cut-off frequency
f1=25
//midband gain
Ao=120
//upper cut-off frequency
f2=BW+f1
//voltage gain at lower cut-off frequency
A1=Ao/sqrt(2)
printf("upper cut-off frequency \n %f hz\n",f2)
printf("Voltage gain at lower cut-off frequency \n %f \n",A1)