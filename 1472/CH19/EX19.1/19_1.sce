clc
//initialization of varaibles
disp("From tables,")
h1=1185.3 //B/lb
v1=4.896 //cu ft/lb
v2=23.66 //cu ft/lb
h2=1054.3 //B/lb
Pd1=1 //cu ft
Pd2=0.98 //cu ft
N=300 //rpm
//calculations
Wx=h1-h2
Pd=Pd1+Pd2
Cl=0.05
mf=Pd*(1-Cl*(v2/v1 - 1))/v2
P=Wx*mf*N/(2545/60)
mep=P*33000/(N*Pd)
//results
printf("Horsepower output = %.3f hp",P)
printf("\n Mean effective pressure = %d psf",mep)
//The answers in the book are a bit different due to round off error.
