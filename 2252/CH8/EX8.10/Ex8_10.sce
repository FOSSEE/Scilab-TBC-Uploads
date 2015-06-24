
function[r,theta]=rect2pol(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
    theta=atand(y/x)
endfunction
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
j=%i
//calculating impedance of overall circuit
Za=2+0*j//impedance of branch A
Zb=3+4*j//impedance of branch B
Zab=Za*Zb/(Za+Zb)//equivalent impedances of branches A and B
Zc=2-2*j
Z1=Zab*Zc/(Zab+Zc)//equivalent impedance of parallel circuit
Zd=1+1*j//impedance of branch D
Z=Z1+Zd
[Z theta]=rect2pol(Z)
mprintf("Total impedance of overall circuit=%f ohm at angle %f degrees\n", Z,theta)
//calculating current taken by overall circuit
V=110//voltage applied to the overall circuit
I=V/Z
mprintf("Current taken by the overall circuit=%f A\n", I)
//Calculating power consumed in each branch and total power consumed
Id=I//current in the series branch
Rd=1//resistance of branch D
Pd=I^2*Rd//power consumed by branch D
Ia=I*mag(Z1)/mag(Za)//current in branch A
Ib=I*mag(Z1)/mag(Zb)//current in branch B
Ic=I*mag(Z1)/mag(Zc)//current in branch C
Ra=2
Pa=Ia^2*Ra
Rb=3
Pb=Ib^2*Rb
Rc=2
Pc=Ic^2*Rc
P=Pa+Pb+Pc+Pd
mprintf("Power consumed by branch A=%f W,\nPower consumed by branch B=%f W,\nPower consumed by branch C=%f W,\nPower consumed by branch D=%f W,\nTotal power consumed=%f W",Pa,Pb,Pc,Pd,P)
//The answers vary from the textbook due to round off error
