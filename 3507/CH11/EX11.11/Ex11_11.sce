//chapter11
//example11.11
//page210

V_Rc=1
gain_beta=45
Rc=1 // kilo ohm

Ic=V_Rc/Rc
//since gain_beta=Ic/Ib
Ib=Ic/gain_beta

printf("base current = %.3f mA",Ib)
