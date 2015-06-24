//chapter16
//example16.3
//page346

Av1=100
Avf1=50
Avf2=75

// since Avf=Av/(1+Av*mv), we get
mv=(Av1/Avf1-1)/Av1
Av2=Avf2/(1-mv*Avf2)

printf("fraction of output fed back to input = %.3f \n",mv)
printf("for overall gain = 75 and same fraction, required gain = %.3f \n",Av2)
