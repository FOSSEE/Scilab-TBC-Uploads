// Example 6.5, page no-238
clear
clc

de=40        //Doppler effect variation due to station-keeping errors in ns/s
d=280        //Sttelite round trip delay in ms
c=20/100     // DS-CDMA signals should not exceed 20% of the chip duration

te=de*10^-9*d*10^-3
tc=te/c
printf("Chip Duration, Tc = %.0f ns \n This gives maximum chip rate as (1/56)Gbps = 1000/56 Mbps = %.3f Mbps",tc*10^9,1000/56)
