//Problem 2.08: 

//initializing the variables:
tc = 0.0512 // in cal/m.s.°C

//calculation:
k = tc*0.3048*3600/(252*1.8) // in Btu/ft.h.°F

printf("\n\nResult\n\n")
printf("\n thermal conductivity in english units is %.3f Btu/ft.h.°F\n",k)
