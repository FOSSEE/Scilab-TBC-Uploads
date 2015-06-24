//Example 17-3,Page No - 691

clear
clc

fs = 4.08*10^9
fIF1 = 770*10^6
fIF2 = 140*10^6

flo1 = fs - fIF1
flo2 = fIF1 - fIF2

printf('The local oscillator frequency for first IF is %.1f Mhz',flo1/10^6)
printf('\n\n The local oscillator frequency for the second IF is %.1f Mhz',flo2/10^6)
