clear
//given
//
//find the final pressure gage and convert absloute temperature to normal temprature
a=210.
t=160.
t2=60.
//absloute temperature to convert is 460
AT=160.+460.
AT1=60.+460.
IP=210.+14.7
FP=IP*(520./620.)
printf("\n FP")
FPg=(FP-14.7)
printf("\n \n final pressue gage is %.2f ",FPg)
