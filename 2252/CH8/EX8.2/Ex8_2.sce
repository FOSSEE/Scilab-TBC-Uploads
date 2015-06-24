
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
//solving part (i)
Xa=2*%pi*50*.1//inductive reactance of branch A
Za=sqrt(50^2+Xa^2)
Ia=230/Za
phi_a=atand(Xa/50)//angle of lag of Ia w.r.t. applied voltage
Ia=pol2rect(Ia,-phi_a)
Xb=1/(2*%pi*50*100D-6)//capacitive reactance of branch B
Zb=sqrt(45^2+Xb^2)
Ib=230/Zb
phi_b=atand(Xb/45)//angle of lead of Ib w.r.t. applied voltage
Ib=pol2rect(Ib,phi_b)
I=Ia+Ib
mprintf("Current drawn by the circuit=%f A\n", mag(I))
//calculating power factor
phi=atan(imag(I)/real(I))//phase angle of the circuit
pf=cos(phi)
mprintf("Power factor of the circuit=%f(leading)\n",pf)
//calculating power taken by the parallel circuit
P=230*mag(I)*pf
mprintf("Power taken by the parallel circuit=%d W", round(P))
//The answers vary from the textbook due to round off error
