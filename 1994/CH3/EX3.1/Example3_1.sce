
//Chapter-3,Example3_1,pg 3_5
n=8
Res1=2^n
Vifs=5.1
Res2=Vifs/((2^n)-1)
Res=Res2*1000//in mv/LSB
Vi=1.28
D=Vi/Res2
str=dec2bin(64)
printf("Resolution\n")
printf("Res2=%.f mv/LSB\n",Res)
printf("digital output voltage \n")
printf("D=%.f LSBs\n",D)

