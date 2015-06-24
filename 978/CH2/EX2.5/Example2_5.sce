//chapter-2,Example2_5,pg 484

ic=0.1*10^-3//constant current source

Vo=2//output voltage

Rf=22*10^3//feedback resistance

Rs=10*10^3//input resistance

Rx=(1/(((ic*Rf)/(Vo*Rs))-(1/Rs)))//unknown resistance

printf("unknown resistance\n")

printf("Rx=%.2f ohm\n",Rx)
