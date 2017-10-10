//chapter27
//example27.3
//page578

h11=10
h12=1
h21=-1
h22=0.2
rL=5 // ohm

Zin=h11-(h12*h21/(h22+1/rL))
Av=-h21/(Zin*(h22+1/rL))

printf("input impedence = %.3f ohm \n",Zin)
printf("voltage gain of circuit = %.3f \n",Av)
