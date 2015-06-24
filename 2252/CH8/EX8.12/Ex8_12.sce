
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction
j=%i
V=200
//calculating supply frequency
L=.1//inductance of branch A
//Xa=2*%pi*f*.1
Ra=10//resistance of branch A
C=150D-6//capacitance of branch B
//Xb=1/(2*%pi*f*150D-6)
Rb=0//resistance of branch B
//Zb=-Xb*j 
//total current I=Ia+Ib, total current is in phase with voltage-->j component of I=0
//on solving for f,
f=sqrt((V*2*%pi*L)*(1/(2*%pi*C))/V-Ra^2)/(2*%pi*L)
mprintf("Frequency of the supply which is also the resonant frequency, f=%f Hz\n", f)
Xa=2*%pi*f*.1
Za=Ra+Xa*j
Ia=V/Za
Xb=1/(2*%pi*f*150D-6)
Zb=-Xb*j
Ib=V/Zb
I=Ia+Ib
mprintf("Total current drawn by the circuit=%f A", mag(I))
//The answers vary from the textbook due to round off error
