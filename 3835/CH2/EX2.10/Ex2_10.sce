clear
//
//case a
I=12/(2+((12*24)/(36))) //values taken from circuit
I1=I*(24/(36))
I2=I*(12/(36))
printf("\n i= %0.1f  A",I)
printf("\n i1= %0.1f  A",I1)
printf("\n i2= %0.1f  A",I2)
//case b
power=(I**2)*2
printf("\n power consumed by 2 ohm resistor= %0.1f  W",power)
power=(I1**2)*12
printf("\n power consumed by 12 ohm resistor= %0.1f  W",power)
power=(I2**2)*24
printf("\n power consumed by 2 ohm resistor= %0.1f  W",power)
//case c
v=I*2
printf("\n voltage drop= %0.1f  V",v)
