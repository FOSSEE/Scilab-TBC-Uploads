//chapter-12,Example12_8,pg 509

Rsmax=1*10^3//sensor resistance max.

Rsmin=100//sensor resistance min.

Vs=5//sensor voltage

Io=(Vs/Rsmax)//current source-> ohm's law

Vmin=Rsmin*Io//min. output voltage

printf("current source\n")

printf("Io=%.4f A\n",Io)

printf("min. output voltage\n")

printf("Vmin=%.2f V\n",Vmin)