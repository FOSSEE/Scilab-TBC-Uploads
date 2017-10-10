//chapter12
//example12.20
//page256

Vcc=8 // V
Rb=360 // kilo ohm
Rc=2 // kilo ohm
gain_beta=100
Vbe=0.7 // V

// when Ic=0, Vce=Vcc i.e. Vce=8 and when Vce=0, Ic=Vcc/Rc i.e. Ic=8/2
// so equation of load line becomes Ic=-0.5*Vce+4

clf()
x=linspace(0,8,5)
y=-0.5*x+4
plot2d(x,y,style=3,rect=[0,0,9,5])
xtitle("dc load line","Vce(volts)","Ic(mA)")

// since Vcc=Ib*Rb+Vbe we get
Ib=(Vcc-Vbe)/Rb
Ic=Ib*gain_beta
Vce=Vcc-Ic*Rc

printf("the operating point is %.3f V and %.3f mA \n",Vce,Ic)
if Vce<Vcc/2+0.1 | Vce>Vcc/2-0.1 // check if V_CE is nearly half of V_CC
    printf("circuit is mid-point biased \n")
else 
    printf("circuit is not mid-point biased. \n")
end
