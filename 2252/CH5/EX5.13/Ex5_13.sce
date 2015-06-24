
//calculating time it will take current to reach .8 of its final steady value
L=5//inductance of winding
R=50//resistance of winding
T=L/R
V=110//applied voltage
I=V/R//final steady current
i=.8*I
t=-T*log(1-i/I)
mprintf("Current grows to .8 times its final steady value, %f sec after the switch is closed\n",t)
//calculating time it will take for the current to reach .9 of its final steady value
i=.9*I
t=-T*log(1-i/I)
mprintf("Time taken for the current to grow to .9 time its final steady value is %f sec\n",t)
//calculating average emf induced
e=-L*(-2.2/.05)
mprintf("emf induced=%d V\n",round(e))
