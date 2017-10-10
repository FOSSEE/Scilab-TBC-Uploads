// chapter 13
// example 13.4
// page 279

Vcc=20 // V
Re=0 // kilo ohm, since given as negligible
Rc=10 // kilo ohm
Rl=30 // kilo ohm
Vbe=0.7 // V

Vce=10 // mV
Ic=1 // mA

// dc load line

    // when Ic=0, Vce=Vcc i.e. Vce=15 and when Vce=0, Ic=Vcc/(Rc+Re) i.e. Ic=20/10 mA
    // so equation of load line becomes Ic=-(1/10)*Vce+2

     clf()
    x=linspace(0,20,5)
    y=-(1/10)*x+2
    plot2d(x,y,style=3,rect=[0,0,21,6])
    xtitle("dc load line-green         ac load line-blue","collector emitter voltage(volts)","collector current(mA)")

// ac load line
    
    R_AC=Rc*Rl/(Rc+Rl) // ac load
    V_ce=Vce+Ic*R_AC // maximum collector emitter voltage
    I_c=Ic+Vce/R_AC // maximum collector current
    // the equation of ac load line in terms of V_ce and I_c becomes
    x=linspace(0,V_ce,10)
    y=-(I_c/V_ce)*x+I_c
     plot2d(x,y,style=2,rect=[0,0,21,6])
