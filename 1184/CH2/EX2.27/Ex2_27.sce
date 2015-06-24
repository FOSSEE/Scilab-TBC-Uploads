//Example 2-27, page No - 87

clear
clc

Vpeak = 5
f = 4*10^6
duty_cycle=0.3

T = 1/f
t0 = duty_cycle*T
Vavg = Vpeak*duty_cycle
min_bw =1/t0

printf('The average DC value is %.1f volt',Vavg)
printf('\n The minimum bandwidth required is %.3f Mhz',min_bw/10^6)


