clear
//
//norton's theorem
//values derived and calculated from figure
v=complex(230,0)
xl=complex(8,-6)
isc=v/xl
IN=isc
rl=complex(0,5)
zn=(rl*xl)/(rl+xl)
zload=complex(4,3)
I=(IN*zn)/(zn+zload)
printf("\n I")
