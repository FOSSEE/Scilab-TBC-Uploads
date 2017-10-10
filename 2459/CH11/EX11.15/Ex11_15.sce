//chapter11
//example11.15
//page219

Vcc=12 // V
Rc=6 // kilo ohm

// we know that Vce=Vcc-Ic*Rc
// when Ic=0, Vce=Vcc i.e. 12V
// when Vce=0, Ic=Vcc/Rc i.e.2mA

// so equation of load line becomes Ic=-(1/6)*Vce+2
x=linspace(0,12,5)
y=-(1/6)*x+2
clf()
xtitle("dc load line","Vce(volts)","Ic(mA)")
plot2d(x,y,style=3,rect=[0,0,13,6])


// for Q point
Ib=20d-3 // mA
gain_beta=50

Ic=gain_beta*Ib
Vce=Vcc-Ic*Rc

printf("Q point = %.3f V and %.3f mA i.e. (%.3f,%.3f) \n",Vce,Ic,Vce,Ic)
