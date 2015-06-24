//chapter-5,Example5_10,pg 493

n=3//3-bit ADC

SbyN=(((2^(n-1)*12^0.5)/2^0.5))//S/N ratio

printf("S/N ratio\n")

printf("SbyN=%.4f \n",SbyN) 

printf("this produces an error due to noise nearly 0.10")