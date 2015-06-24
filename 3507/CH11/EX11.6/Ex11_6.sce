//chapter11
//example11.6
//page205

alpha=0.95
V_Rc=2 // V
Rc=2 //kilo ohm

Ic=V_Rc/Rc // mA

// since alpha=Ic/Ie
Ie=Ic/alpha

// since Ie=Ib+Ic
Ib=Ie-Ic

printf("base current = %.3f mA \n",Ib)
