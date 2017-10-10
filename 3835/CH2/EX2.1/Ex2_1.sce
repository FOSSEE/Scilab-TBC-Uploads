clear
//
v=10
r=4
//case a
i=v/(r)
printf("\n i= %0.1f  A",i)
//case b
//6ohm resistor is in series with 4 ohm resistor
i=v/(6+4)
v1=i*6
v2=i*4
printf("\n voltage across 6 ohm resistor= %0.1f  V",v1)
printf("\n voltage across 4 ohm resistor= %0.1f  V",v2)
//case c
i=10 //constant in both cases
v4=i*4
printf("\n voltage when 4 ohm resistor is connected= %0.1f  V",v4)
v6=i*6
v=v4+v6
printf("\n voltage when both resistors are in series= %0.1f  V",v)
