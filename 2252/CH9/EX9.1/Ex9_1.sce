
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction

j=%i
//considering coils to be star connected
Vl=400//line voltage
Vph=Vl/sqrt(3)
Rph=15//resistance of load
Xl=2*%pi*50*.03//inductive reactance of each coil
Zph=Rph+Xl*j
Iph=Vph/mag(Zph)
Il=Iph
pf=Rph/mag(Zph)//power factor
P=sqrt(3)*Vl*Il*pf
mprintf("In star connected circuit,\nPhase current=%f A,\nLine current=%f A,\nPower absorbed=%f kW\n", Iph, Il,P/10^3)
//considering coils to be delta connected
Vph=Vl
Iph=Vph/mag(Zph)
Il=sqrt(3)*Iph
P=sqrt(3)*Vl*Il*pf
mprintf("In delta connected circuit,\nPhase current=%f A,\nLine current=%f A,\nPower absorbed=%f kW\n", Iph, Il,P/10^3)
//answers vary from the textbook due to round off error
