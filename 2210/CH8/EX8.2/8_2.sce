//Chapter 8, Problem 2
clc
r1=100e3                            //resistance in ohm
r2=10e3                             //resistance in ohm
c1=10e-9                            //capacitance in farad
c2=100e-9                            //capacitance in farad

//calculation
w=sqrt(1/(c1*c2*r1*r2))
f=w/(2*%pi)
g=1+(r1/r2)+(c2/c1)

printf("(a) Frequency of oscillation = %.2f Hz\n\n",f)
printf("(b) Minimum gain of the amplifier = %d ",g)
