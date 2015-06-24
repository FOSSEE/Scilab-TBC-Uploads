
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
//calculating current in each branch and its angle of lag or lead
V=230
f=50
//for branch A
Ra=10//resistance
L=.04//inductance
Xl=2*%pi*f*L//inductive reactance
Za=sqrt(Ra^2+Xl^2)//impedance
Ia=V/Za
phi_a=atand(Xl/Ra)
//for branch B
R=25//resistance
Zb=R//impedance
Ib=V/Zb
phi_b=0
mprintf("Current in branch A, Ia=%f A lagging the applied voltage by %f degrees\nCurrent in branch B, Ib=%f A in phase with applied voltage\n",Ia, phi_a,Ib)
//calculating current drawn by the circuit
Ia=pol2rect(Ia,phi_a)
Ib=pol2rect(Ib,0)
I=Ia+Ib
mprintf("Total current drawn by the circuit=%f A\n", mag(I))
phi=atand(imag(I)/real(I))
mprintf("Phase angle of combination=%f degrees and power factor =%f lagging",phi,cos(phi*%pi/180))
