//chapter 14
//example 14.6
//page 302

Av=15 // db
V1=0.8 // V

// since db voltage gain Av=20*log10(V2/V1) making V2 as subject we get

V2=V1*10^(Av/20)

printf("output voltage = %.2f V \n",V2)
