
//generated emf is directly proportional to speed
//readings for OCC at 1000 rpm are
Eg2=[10*(1000/800) 112*(1000/800) 198*(1000/800) 232*(1000/800) 252*(1000/800) 266*(1000/800)]
i=linspace(0,5,6)
plot2d(i,Eg2) 
xtitle("Magnetization curve for example 18.4","Field current","Generated emf")

//refer Fig.18.7 in the textbook
Rsh=70//resistance of field circuit
//line OA is field resistance line
V=330//voltage corresponding to point A
mprintf("No load terminal voltage is %d V\n",V)
//now, no load terminal voltage is 270 V
V=270
//the operating point is D
//line OD is corresponding field resistance line
R=V/2.4//resistance represented by line OD
mprintf("Additional resistance required in the field circuit to reduce the voltage to 270 V=%f ohm\n",R-Rsh)
