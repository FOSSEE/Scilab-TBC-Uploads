//chapter1,Example1_6,pg 482

Rm=1000//meter resistance

Is=900*10^-6//shunt current

Vm=100*10^-3//drop across meter

Rs=Vm/Is//ohm's law

It=1*10^-3

//Is=It*(Rm/(Rs+Rm))

Rs=(Rm*(It-Is))/Is

printf("\nshunt resistance\n")

printf("\nRs=%.2f ohm",Rs)
