//Problem 2.02: 

//initializing the variables:
f1 = 55; // in °F
c2 = 55; // in °C

//calculation:
r1 = f1 + 460
c1 = (f1 - 32)*5/9
k1 = (f1 + 460)*5/9
r2 = 1.8*c2 + 492
f2 = 1.8*c2 + 32
k2 = c2 + 273

printf("\n\nResult\n\n")
printf("\n (a) Rankine = %.0f°R, (b) Celsius = %.1f°C and (c) Kelvin = %.0f K\n",r1, c1, k1)
printf("\n (a) Fahrenheit = %.1f°F, (b) Rankine = %.0f°R, and (c) Kelvin = %.0f K\n",f2, r2, k2)
