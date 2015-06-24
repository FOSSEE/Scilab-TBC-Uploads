
function[r,theta]=rect2pol(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
    theta=atan(y/x)
endfunction
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
f=50//frequency
P=4//no. of poles
Ns=120*f/P//synchronous speed
Nr=1425
s=(Ns-Nr)/Ns//slip
R2_dash=7.5
X2_dash=4.5
Xm=150
Zf=(Xm*%i/2)*(R2_dash/(2*s)+%i*X2_dash/2)/(R2_dash/(2*s)+%i*(Xm+X2_dash)/2)//forward impedance
Zb=(%i*Xm/2)*(R2_dash/(2*(2-s))+%i*X2_dash/2)/(R2_dash/(2*(2-s))+%i*(Xm+X2_dash)/2)//backward impedance
Z1=2.5+4.5*%i
Zin=Z1+Zf+Zb//input impedance
//calculating input current
V1=pol2rect(230,0)
I1=V1/Zin
[I1 theta]=rect2pol(I1)
mprintf("Input current drawn by the motor is %f A at %f pf lagging\n", I1,cos(theta))
//calculating air gap power
Pgf=I1^2*real(Zf)//air gap power due to forward field
Pgb=I1^2*real(Zb)//air gap power due to backward field
Pg=Pgf+Pgb
mprintf("Air gap power=%f W\n",Pg)
//calculating rotor copper losses
Prc=s*Pgf+(2-s)*Pgb
mprintf("Rotor copper losses=%f W",Prc)
//answers vary from the textbook due to round off error
