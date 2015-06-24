
i=linspace(0,1.6,9)
V=[0 40 66 86 101 112 121 128 133]
plot(i,V,rect=[0 0 1.6 133])
xtitle("Magnetization curve for example 18.1","Field Current","Generated emf")

//refer Fig. 18.4 in the textbook
Rsh=94//resistance of shunt field winding
//OA is the field resistance line for this resistance
Voc=126//voltage corresponding to point A
mprintf("Open circuit voltage when the field circuit resistance is 94 ohm=%d V\n",Voc)
//D is point on OCC corresponding to 110 V. OD represents the field resistance line to generate this voltage 
R=70/.6//total resistance of shunt field circuit
mprintf("Additional resistance in the shunt field circuit is %f ohm\n", R-Rsh)
//line OE represents the critical resistance of shunt field
Rc=40/.2
mprintf("Critical resistance=%d ohm",Rc)
