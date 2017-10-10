//chapter27
//example27.5
//page582

hie=1700 // ohm
hre=1.3d-4 
hoe=6d-6 // mho
hfe=38
rL=2000 // ohm

Zin=hie-hre*hfe/(hoe+1/rL)

Ai=hfe/(1+hoe*rL)

Av=-hfe/(Zin*(hoe+1/rL))

printf("input impedence = %.3f ohm \n",Zin)
printf("current gain = %.3f \n",Ai)
printf("voltage gain = %.3f \n",-Av) // considering magnitude of Av,we neglect its negative sign and so we display -Av instead of Av
