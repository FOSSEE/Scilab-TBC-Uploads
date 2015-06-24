
function[z]=pol2rect(r,theta)
    x=r*cos(theta*%pi/180)
    y=r*sin(theta*%pi/180)
    z=x+y*%i
endfunction
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction
//for coil A
Va=10//voltage applied
Ia=2//current taken
pf=.8//lagging power factor
Ia=pol2rect(Ia,-acosd(pf))
Za=Va/Ia//impedance
//for coil B
Vb=5//voltage applied
Ib=2//current taken
pf=.7//lagging power factor
Ib=pol2rect(2,-acosd(pf))
Zb=Vb/Ib//impedance
//calculating voltage required to produce a current of 2 A with A and B in series
I=2
Z=Za+Zb//impedance of series circuit
V=I*mag(Z)
mprintf("Voltage required to produce a current of 2 A with A and B in series=%f V\n", V)
//calculating voltage required to produce a current of 2 A with A and B in parallel
Z=Za*Zb/(Za+Zb)//impedance of parallel circuit
V=I*mag(Z)
mprintf("Voltage required to produce a current of 2 A with A and B in parallel=%f V\n", V)
//The answers vary from the textbook due to round off error
