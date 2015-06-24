//Chapter 5, Problem 15
clc
n1=160                              //no of turn
n2=40                               //no of turns
n3=8                                //no of turns
n4=150                              //no of turns
n5=50                               //no of turns
rl=2000                             //load resistance in ohms
rt=100e3                            //output impedance of transistor
Q=100                               //Q factor
Ct=180*10^-12                          //capacitance in farad
f=465e3                                 //resonant frequency

rl1=((n1+n2)/n3)^2*rl
rtr=((n1+n2)/n2)^2*rt
rckt=Q/(2*%pi*Ct*f)
req=rl1*rckt/(rl1+rckt)
rl2=((n2/(n1+n2))^2)*req

printf("Transistor load impedance at resonance = %.2f Kohm\n\n",rl2/1000)

