//chapter12
//example12.4
//page241

Vcc=6 // V
Rb=530 // kilo ohm
Rc=2 // kilo ohm
gain_beta=100
Vbe=0.7 // V

// when Ic=0, Vce=Vcc i.e. Vce=6 and when Vce=0, Ic=Vcc/Rc i.e. Ic=6/2
// so equation of load line becomes Ic=-0.5*Vce+3

x=linspace(0,6,5)
y=-0.5*x+3
plot2d(x,y,style=3,rect=[0,0,7,4])
xtitle("dc load line","Vce(volts)","Ic(mA)")

// since Vcc=Ib*Rb+Vbe we get
Ib=(Vcc-Vbe)/Rb
Ic=Ib*gain_beta
Vce=Vcc-Ic*Rc

printf("the operating point is %.3f V and %.3f mA \n",Vce,Ic)

stability_factor=gain_beta+1

printf("stability factor=%.1f \n",stability_factor)
