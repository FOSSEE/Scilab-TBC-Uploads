//chapter11
//example11.19
//page223

Rc=2 // kilo ohm
Ri=1 // kilo ohm
gain_beta=50

// for single stage, R_AC=Rc so voltage gain becomes
Av=gain_beta*Rc/Ri

printf("voltage gain = %.3f \n",Av)
