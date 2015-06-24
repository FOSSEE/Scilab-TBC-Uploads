clc 
// Given that
A = 20 // Value of A in voltage length characteristic equation
B = 40 // Value of B in voltage length characteristic equation
v= 80 // Open circuit voltage in V
I = 1000 // Short circuit current in amp
// Sample Problem 1 on page no. 285
printf("\n # PROBLEM 5.1 # \n")
l=poly(0,"l")
i = ((v-A)-(B* l))*(I/v)
V = (A+B*l)// Given in the question
P = V*i
k = derivat(P)
L=roots(k)
Pmax=((v-A)-(B* L))*(I/v)*(A+B*L)
printf("\n Maximum power of the arc = %d kVA",Pmax/1000)
