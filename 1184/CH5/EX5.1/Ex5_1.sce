//Example 5-1  Page No - 153

clear
clc

f = 915*10^6
fm_deviation =12.5*10^3

max_deviation = f + fm_deviation
min_deviation = f - fm_deviation

printf('Maximum frequency occur during modulation is %.1f Khz',max_deviation/1000)
printf('\n Minimum frequency occur during modulation is %.1f Khz',min_deviation/1000)

