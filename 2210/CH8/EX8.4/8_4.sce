//Chapter 8, Problem 4
clc
ct=15e-12                            //capacitance in farad
c1=47e-12                            //capacitance in farad
c2=100e-12                            //capacitance in farad
L=300e-9                            //inductance in henry

//calculation
w1=(1/(L*ct))*(1+(ct/c1)+(ct/c2))
w=sqrt(w1)
fos=w/(2*%pi)

printf("Approximate frequency = %.2f MHz",fos/10^6)
