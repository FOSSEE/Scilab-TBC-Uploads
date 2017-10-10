//to find ratio of the speed of the driving shaft to the speed of the driven shaft
clc
//given
Tb=27
Tc=30
Td=24
Te=21
k=Te*Tb/(Tc*Td)//k=Nd/Ne
//by applying componendo and dividendo, using Ne=0 and reducing we get
a=(1-k)//where a = Nd/Na
b=1/a
printf("\nThe ratio of the speed of driving shaft to the speed of driven shaft\n\nNa/Nd = %.2f",b)
