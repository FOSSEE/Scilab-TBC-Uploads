//chapter27
//example27.7
//page584

Vbe=10d-3 // V
Vbe2=0.65d-3 // V
Vce=1 // V
Ib=10d-6 // A
Ic=1d-3 // A
Ic2=60d-6 // A

hie=Vbe/Ib // in ohm
hfe=Ic/Ib // in ohm
hre=Vbe2/Vce
hoe=Ic2/Vce // in mho

printf("hie = %.3f ohm \n",hie)
printf("hfe = %.3f ohm \n",hfe)
printf("hre = %.5f \n",hre)
printf("hoe = %.3f micro mho \n",hoe*1d6)
