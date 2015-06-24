// Example 6.1, page no-370
clear
clc
//(a)
p=1.5
a=4
b=20
wh=(((b-a)/2)*p)+a
printf("(a)just at the bottom level of the tank\nWater head applied to the transmitter =%d mA ",wh)
//(b)
wh2=(((b-a)/2)*p)+2*a
printf("\n\n(b)5m below the bottom of the tank\nWater head applied to the transmitter =%d mA ",wh2)
//(c)
wh3=(((b-a)/2)*p)
printf("\n\n(c)5m above the bottom of the tank\nWater head applied to the transmitter =%d mA ",wh3)
