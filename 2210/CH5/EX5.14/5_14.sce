//Chapter 5, Problem 14
clc
n1=160                              //no of turn
n2=40                               //no of turns
n3=8                                //no of turns
n4=150                              //no of turns
n5=50                               //no of turns
rl=2000                             //load resistance in ohms

//calculation
rl1=((n1+n2)/n3)^2*rl
req=(n2/(n1+n2))^2*rl1
rl2=((n4+n5)/n3)^2*rl
req2=(n5/(n4+n5))^2*rl2
printf("(a)Transistor load impedance at resonance = %d Kohm\n\n",req/1000)
printf("(b)New transistor load impedance at resonance = %.2f Kohm\n\n",req2/1000)
