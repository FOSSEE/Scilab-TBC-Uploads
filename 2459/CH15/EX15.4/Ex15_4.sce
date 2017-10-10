//chapter15
//example15.4
//page325

Vcc=20 // V
Vbe=0.7 // V
Rb=1d3 // ohm
Rc=20 // ohm
gain=25

Ib=(Vcc-Vbe)/Rb
Ic=Ib*gain
Vce=Vcc-Ic*Rc

ib_peak=10d-3
ic_peak=gain*ib_peak
Po_ac=ic_peak^2*Rc/2
P_dc=Vcc*Ic
eta=(Po_ac/P_dc)*100

printf("operating point = %.3f V and %.3f mA \n",Vce,Ic*1000)
printf("output power = %.3f W \n",Po_ac)
printf("input power = %.3f W \n",P_dc)
printf("collector efficiency = %.3f percent \n",eta)

// when Ic=0, Vce=Vcc i.e. Vce=8 and when Vce=0, Ic=Vcc/Rc i.e. Ic=20/20
// so equation of load line becomes Ic=-50*Vce+1000

// plot the load line
clf()
x=linspace(0,20,5)
y=-50*x+1000
plot2d(x,y,style=3,rect=[0,0,25,1100])
xtitle("dc load line","Vce(volts)","Ic(mA)")
