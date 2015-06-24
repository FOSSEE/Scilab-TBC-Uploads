clear
clc

I=[
5*exp(%i * %pi * 60 / 180)
5*exp(%i * %pi * -60 / 180)
0
]
a=exp(%i * 2 * %pi/3)
A=[1 1 1 
1 a^2 a
1 a a^2
]

Is=inv(A)*I

mprintf("\nIa0= %s", string(round(abs(Is(1))*1000)/1000) +'/_'+ string(round(atand(imag(Is(1))/real(Is(1)))*100)/100) )
mprintf("\nIa1= %s", string(round(abs(Is(2))*1000)/1000) +'/_'+ string(round(atand(imag(Is(2))/real(Is(2)))*100)/100) )
mprintf("\nIa2= %s", string(round(abs(Is(3))*1000)/1000) +'/_'+ string(round(atand(imag(Is(3))/real(Is(3)))*100)/100 +180) )
