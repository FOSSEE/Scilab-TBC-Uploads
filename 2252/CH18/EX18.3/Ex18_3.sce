
i=linspace(0,2.5,6)
V=[0 50 84 105 120 131]
plot(i,V)
xtitle("Magnetization curve for example 18.3","Field Current","Generated emf")

//refer Fig.18.6 in the textbook
//OE is the field resistance line of critical resistance
Rc=100
//solving (iii)
Rsh=70//field resistance
N=750//speed in rpm
Nc=Rsh/Rc*N
mprintf("When the field resistance is 70 ohm, critical speed=%d rpm\n",round(Nc))
//solving (iv)
Eg=100//open-circuit voltage
Rsh=55//shunt field resistance
//now, the operating point is M instead of A
//LM/LN=N1/N
//from the graph, LM/LN=100/115
N1=100/115*N//desired speed
mprintf("With shunt field resistance of 55 ohm, reduction in speed to make the open circuit voltage equal to 100 V=%d rpm",round(N-N1))
