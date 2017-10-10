//chapter27
//example27.4
//page581

hie=2000 // ohm
hoe=1d-4 // mho
hre=1d-3 
hfe=50
rL=600 // ohm

Zin=hie-hre*hfe/(hoe+1/rL)
// here second term can be neglected compared to hie so
Zin_approx=hie

Ai=hfe/(1+hoe*rL)
// if hoe*rL << 1 then
Ai_approx=hfe

Av=-hfe/(Zin*(hoe+1/rL))
// negative sign indicates phase shift between input and output

printf("input impedence = %.3f ohm \n",Zin)
printf("current gain = %.3f \n",Ai)
printf("voltage gain = %.3f. Here negative sign indicates phase shift between input and output.\n \n",Av)

printf("approximate input impedence = %.3f ohm \n",Zin_approx)
printf("approximate current gain = %.3f \n",Ai_approx)
