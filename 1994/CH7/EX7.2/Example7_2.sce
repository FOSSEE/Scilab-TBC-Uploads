//Chapter-7,Example7_2,pg 7-21
x=poly(0,"x")
L=(12+6*x-(x^2))//x is deflection in rad from zero
dl=derivat(L)
K=12
I=8
x=6/(((2*K)/(I^2))+2)//x=((I^2)dl)/(2*k)
z=x*(180/%pi)
y=horner(L,x)
printf("deflection for given current\n")
printf("x=%.2f deg\n",z)
printf("inductance for given deflection\n")
printf("L=%.2f uH",y)
