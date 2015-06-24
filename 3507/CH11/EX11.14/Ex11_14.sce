//chapter11
//example11.14
//page218

Vcc=12.5 // V
Rc=2.5 // kilo ohm

// we know that Vce=Vcc-Ic*Rc
// when Ic=0, Vce=Vcc i.e. 12.5V
// when Vce=0, Ic=Vcc/Rc i.e.5mA

// so equation of load line becomes Ic=-0.4*Vce+5
x=linspace(0,12.5,5)
y=-0.4*x+5
clf()
xtitle("dc load line","Vce(volts)","Ic(mA)")
plot2d(x,y,style=3,rect=[0,0,13,6])
