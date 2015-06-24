//chapter2,Example2_1,pg 23

//for fig. 2.7

ic=1*10^-3//constant current source

Rf=15*10^3//feedback resistance

Rs=10*10^3//input resistance

Rx=1*10^3//unknown resistance

Vo1=ic*Rf*(Rx/(1+(Rx*Rs)))//output voltage case-1

printf("output voltage for case-1\n")

printf("\nVo1=%.4f V\n",Vo1)

//for fig. 2.8

R1=10//unknown resistance

R2=1*10^3//input resistance

Vo2=ic*Rx*(R1/(1+R1*R2))//output voltage case-2

printf("output voltage for case-2\n")

printf("\nVo2=%.4f V\n",Vo2)
