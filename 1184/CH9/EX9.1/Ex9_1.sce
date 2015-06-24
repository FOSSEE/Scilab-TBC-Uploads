//Example 9-1,Page No - 318

clear
clc

fl =220*10^6
fm =224*10^6
IF1 = 10.7*10^6
IF = 1.5*10^6

IF2 =IF1+IF
tune_l =fl+IF1
tune_m = fm+IF1

IF1_imgl = tune_l+IF1
IF2_imgm = tune_m+IF1

printf('The local oscillatior tuning range is %.1f to %.1f Mhz',tune_l/10^6,tune_m/10^6)
printf('\n Frequency of the second local oscillator is %.1f Mhz',IF2/10^6)
printf('\n First IF image range is %.1fto %.1f Mhz',IF1_imgl/10^6,IF2_imgm/10^6)
