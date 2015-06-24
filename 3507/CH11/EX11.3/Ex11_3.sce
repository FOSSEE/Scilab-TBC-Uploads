//chapter11
//example11.3
//page205

alpha=0.9
Ie=1 //mA

// since alpha=Ic/Ie we get

Ic=alpha*Ie

// since Ie=Ic+Ib we get

Ib=Ie-Ic

printf("base current = %.3f mA \n",Ib)
