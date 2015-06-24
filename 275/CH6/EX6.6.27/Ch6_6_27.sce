clc
disp("Example 6.27")
printf("\n")
disp("Calculate closed loop gain & input voltage to get output voltage 2v")
printf("given")
disp("Rf=1M,R1=20K,output voltage=2V")
Rf=10^6
R1=20*10^3
Vo=2
//calculate closed loop gain
Af=(-Rf/R1)
//calculate input voltage
Vi=Vo/Af
printf("closed loop voltage gain=%f\n",Af)
printf("Input voltage=%f volt",Vi)
