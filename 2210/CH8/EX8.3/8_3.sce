//Chapter 8, Problem 3
clc
c1=10e-12                            //capacitance in farad
c2=100e-12                            //capacitance in farad
f=100e6                                 //frequency in hertz

//calculation
w=2*%pi*f
L=(1/w^2)*((1/c1)+(1/c2))
g=1+(c2/c1)

printf("(a) Value of inductor = %.2f nH\n\n",L*10^9)
printf("(b) Minimum voltage gain = %d ",g)
