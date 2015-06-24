//chapter11
//example11.20
//page224

Vcc=20 // V
Rc=1 // kilo ohm

// for saturation collector current, knee voltage becomes 0V so we get
Ic_sat=Vcc/Rc

// it can be seen from the circuit that cut-off voltage (i.e. when Ib=0) equals Vcc itself
Vce_cutoff=Vcc

// the equation of load line becomes Ic=-Vce+20

clf()
x=linspace(0,20,5)
y=-x+20
plot2d(x,y,style=3,rect=[0,0,21,21])
xtitle("dc load line","Vce(volts)","Ic(mA)")

printf("saturation collector current = %.3f mA \n",Ic_sat)
printf("cut-off collector emitter voltage = %.3f V \n",Vce_cutoff)
