
function[z]=pol2rect(r,theta)
    x=r*cos(theta)
    y=r*sin(theta)
    z=x+y*%i
endfunction
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction

j=%i
R1=.15//per phase stator winding resistance
//block rotor test
Vb=133/sqrt(3)//per phase voltage
Ib=100//per phase current
Wb=8085/3//per phase power
Zb=Vb/Ib//per phase impedance
Rb=Wb/Ib^2//per phase resistance
Xb=sqrt(Zb^2-Rb^2)//per phase reactance
R2_dash=Rb-R1//per phase rotor resistance referred to stator
X2_dash=Xb/2//per phase rotor reactance referred to stator
X1=X2_dash//per phase stator leakage reactance
//no load test
Vo=400/sqrt(3)//per phase voltage
Io=20//per phase current
Wo=2080/3//per phase power
pf=Wo/(Vo*Io)//power factor
phi0=acos(pf)
Iw=Io*cos(phi0)
Im=-Io*sin(phi0)*j
Io=pol2rect(Io,-phi0)
Z1=R1+X1*j
Ro=(Vo-Io*Z1)/Iw
Xm=(Vo-Io*Z1)/Im
mprintf("Equivalent circuit parameters are\nR1=%f ohm;\nX1=%f ohm;\nR2_dash=%f ohm;\nX2_dash=%f ohm;\nRo=%f ohm;\nXm=%f ohm",R1,X1,R2_dash,X2_dash,mag(Ro),mag(Xm))

