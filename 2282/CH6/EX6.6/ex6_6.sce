// Example 6.6, page no-238
clear
clc

cr=25           //Chip rate is 25 Mbps
c=20/100        // DS-CDMA signals should not exceed 20% of the chip duration
d=1000/cr       //chip duration in ns
tr=c*d
x=tr/(280*10^-3)
printf("The maximum allowable timing error per satellite round trip is %.0f ns\n This %.0f ns error is to occur in 280 ms.\n Therefore, maximum permissible Dopler effect variation is %.2f ns/s",tr,tr,x)
