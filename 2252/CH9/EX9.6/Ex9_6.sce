
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
//calculating phase currents-let the sequence be RYB
Vl=440//line voltage
Vph=Vl//delta connected load
Zph1=150//impedance of the phase between A and B(resistive)
I1=Vph/Zph1
mprintf("I1=%f A at 0 degrees w.r.t. Vry\n", I1)
Zph2=30+50*j//impedance of the phase between B and C
I2=Vph/mag(Zph2)
//as the load is inductive, current will lag the voltage Vyb by phi2
phi2=atand(50/30)
mprintf("I2=%f A at -%f degrees w.r.t. Vyb\n", I2,phi2)
C=20D-6
f=50
Xc=-(1/(2*%pi*f*C))*j
I3=Vph/mag(Xc)
//as the load is capacitive, current will lead the voltage Vbr by 90 degrees
mprintf("I3=%f A at 90 degrees w.r.t. Vbr\n", I3)

//calculating line currents-
Vry=pol2rect(440,0)
Vyb=pol2rect(440,-120)
Vbr=pol2rect(440,-240)
I1=Vry/Zph1
I2=Vyb/Zph2
I3=Vbr/Xc
//using KCL
Ir=I1-I3
Iy=I2-I1
Ib=I3-I2
mprintf("Current in line R, Ir=%f A,\nCurrent in line Y, Iy=%f A,\nCurrent in line B, Ib=%f A,\n", mag(Ir),mag(Iy),mag(Ib))
