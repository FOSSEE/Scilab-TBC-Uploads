// chapter 13
// example 13.3
// page 278

Vcc=15 // V
Re=2 // kilo ohm
Rc=1 // kilo ohm
Rl=1 // kilo ohm
Vbe=0.7 // V

// dc load line

    // when Ic=0, Vce=Vcc i.e. Vce=15 and when Vce=0, Ic=Vcc/(Rc+Re) i.e. Ic=15/3
    // so equation of load line becomes Ic=-(1/3)*Vce+15

       clf()
    x=linspace(0,15,5)
    y=-(1/3)*x+5
    plot2d(x,y,style=3,rect=[0,0,16,6])
    xtitle("dc load line-green         ac load line-blue","collector emitter voltage(volts)","collector current(mA)")

    V2=5 // V
    // since voltage across R2 is V2=5 V and V2=Vbe+Ie*Re we get
    Ie=(V2-Vbe)/Re
    Ic=Ie
    Vce=Vcc-Ic*(Rc+Re)

    printf("the operating point is %.3f V and %.3f mA \n",Vce,Ic)


// ac load line
    
    R_AC=Rc*Rl/(Rc+Rl) // ac load
    V_ce=Vce+Ic*R_AC // maximum collector emitter voltage
    I_c=Ic+Vce/R_AC // maximum collector current
    // the equation of ac load line in terms of V_ce and I_c becomes
    y=-(I_c/V_ce)*x+I_c
     plot2d(x,y,style=2,rect=[0,0,10,20])
    
