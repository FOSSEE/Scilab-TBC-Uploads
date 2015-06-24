//chapter11
//example11.10
//page210

gain_beta=49
Ib=240d-3 // mA
Ie=12 // mA

alpha=gain_beta/(1+gain_beta)
Ic=alpha*Ie // or Ic=gain_beta*Ib

printf("collector current = %.3f mA \n",Ic)
