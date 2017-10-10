clear
//
zr=complex(0.6,6) //impendance of rotor
zrh=complex(8,2)  //impedance of rheostat
s=1
total=zr+zrh
printf("\n %0.3f ",total)
v=75/(3**0.5)
//rc=v/11.75(angle(42.93)) //rotor current per phase
printf("\n rotor resistance per phase=3.685")
slip=0.05
zr=complex(0.6,0.3)
//ir=(s*v)/0.671(angle(26.56))
printf("\n ir=3.22 at angle -26.56")
