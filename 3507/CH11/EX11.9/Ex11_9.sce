//chapter11
//example11.9
//page210

gain_beta=50
Ib=20d-3 // mA

// since gain_beta = Ic/Ib we get
Ic=gain_beta*Ib
Ie=Ic+Ib

printf("emitter current = %.3f mA \n",Ie)
