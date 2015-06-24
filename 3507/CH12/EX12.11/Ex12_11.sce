//chapter12
//example12.11
//page248

Vcc=15 // V
Re=2 // kilo ohm
Rc=1 // kilo ohm
gain_beta=100
Vbe=0.7 // V
R1=10 // kilo ohm
R2=5 // kilo ohm

// when Ic=0, Vce=Vcc i.e. Vce=6 and when Vce=0, Ic=Vcc/(Rc+Re) i.e. Ic=15/(1+2)
// so equation of load line becomes Ic=-(1/3)*Vce+5

clf()
x=linspace(0,15,5)
y=-(1/3)*x+5
plot2d(x,y,style=3,rect=[0,0,16,6])
xtitle("dc load line","Vce(volts)","Ic(mA)")

V2=Vcc*R2/(R1+R2) // voltage across R2 i.e. 5 kilo ohm
Ie=(V2-Vbe)/Re
Ic=Ie
Vce=Vcc-Ic*(Rc+Re)

printf("the operating point is %.3f V and %.3f mA \n",Vce,Ic)
