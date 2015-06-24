//chapter11
//example11.5
//page205

Ie=1 //mA
alpha=0.92
Icbo=50d-3 //mA

Ic=alpha*Ie+Icbo

printf("collector current = %.3f mA \n",Ic)
