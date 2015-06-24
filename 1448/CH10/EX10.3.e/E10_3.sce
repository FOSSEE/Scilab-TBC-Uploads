clc
//Initialization of variables
T=[700 730 760 790 810 840 910 1000]
k=[0.011 0.035 0.105 0.343 0.789 2.17 20 145]
//calculations
x=1000/T
y=log(k)
//sx=sum(x)
//sx2=sum(x^2)
//sy=sum(y)
//sxy=sum(x.*y)
//n=length(x)
//A=[sx,n;sx2,sx]
//B=[sy;sxy]
//p=A\B
//m=p(1,1)
//b=p(2,1)
disp('from graph')
m=2.265*10^4
Ea=m*8.3145
b=27.71
A=%e^(b)
//results
printf("Activation energy = %d kJ/mol",Ea/1000)
printf("\n Arrhenius factor = %.2e L/ mol s",A)
