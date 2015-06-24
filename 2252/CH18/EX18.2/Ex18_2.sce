
i=linspace(0,3.5,8)
V=[0 60 120 138 145 149 151 152]
plot2d(i,V)
xtitle("Magnetization curve for example 18.2","Field Current","Generated emf")

//refer Fig. 18.5 in the textbook
Rsh=60//shunt field resistance
//line OA is field resistance line
Voc=149//voltage corresponding to point A
mprintf("Open circuit voltage=%d V\n",Voc)
//resistance represented by OE is critical resistance
Rc=120
mprintf("Critical resistance of shunt field=%d ohm\n",Rc)
//when the load has a resistance of 4 ohm
R=4
//load current I=V/4
//Ish=V/60
//Ia=I+Ish
Eg=Voc
Ra=.1//armature resistance
//V=Eg-Ia*Ra
V=Eg/(1+(1/R+1/Rsh)*Ra)
mprintf("Terminal voltage, V=%f V\n",V)
//when the terminal voltage is 100 V
V=100//terminal voltage
Ia=(Eg-V)/Ra
Ish=V/Rsh
I=Ia-Ish
mprintf("Load current=%f A",I)
