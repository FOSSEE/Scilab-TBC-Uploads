//chapter27
//example27.6
//page582

hie=1500 // ohm
hre=4d-4 
hoe=5d-5 // mho
hfe=50
Rc=10d3 // ohm
R_L=30d3 // ohm
R1=80d3 // ohm
R2=40d3 // ohm

rL=Rc*R_L/(Rc+R_L)
Zin=hie-hre*hfe/(hoe+1/rL)
Zin_stage=Zin*(R1*R2/(R1+R2))/(Zin+(R1*R2/(R1+R2)))

Av=-hfe/(Zin*(hoe+1/rL))

printf("input impedence = %.3f ohm \n",Zin_stage)
printf("voltage gain = %.3f \n",Av)

// the accurate answers are input impedence = 1321.957 ohm and voltage gain = -196.078 but in book they are given as 1320 ohm and -196 respectively
