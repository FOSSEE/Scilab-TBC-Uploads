
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction

j=%i
Zl=8+6.2*j//load impedance
//for transformer A
Ea=6600//secondary induced emf
Za=.3+3.2*j//equivalent impedance referred to secondary
//for transformer B
Eb=6400//secondary induced emf
Zb=.2+1.2*j//equivalent impedance referred to secondary
Ia=(Ea*Zb+(Ea-Eb)*Zl)/(Za*Zb+(Za+Zb)*Zl)
Ib=(Eb*Za-(Ea-Eb)*Zl)/(Za*Zb+(Za+Zb)*Zl)
mprintf("Current delivered by transformer A is %f A\nCurrent delivered by transformer B is %f A",mag(Ia),mag(Ib))
