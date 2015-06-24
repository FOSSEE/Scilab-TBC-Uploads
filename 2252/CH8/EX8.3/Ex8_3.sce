

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
//calculating current in coil A
Xa=2*%pi*50*.02//inductive reactance of coil A
Za=sqrt(12^2+Xa^2)
Ia=200/Za
phi_a=atand(Xa/12)//angle of lag of Ia w.r.t. applied voltage
mprintf("Ia=%f A, lagging the applied voltage by %f degrees\n", Ia, phi_a)
//calculating current in coil B
Xb=2*%pi*50*.03//inductive reactance of coil B
Zb=sqrt(6^2+Xb^2)
Ib=200/Zb
phi_b=atand(Xb/6)//angle of lag of Ib w.r.t. applied voltage
mprintf("Ib=%f A, lagging the applied voltage by %f degrees\n", Ib, phi_b)
//calculating total current in the circuit
Ia=pol2rect(Ia,-phi_a)
Ib=pol2rect(Ib,-phi_b)
I=Ia+Ib
mprintf("Total current drawn by circuit=%f A lagging the applied voltage by %f degrees\n", mag(I),-atand(imag(I)/real(I)))
//calculating total current when additional circuit is added
Xc=1/(2*%pi*50*120D-6)//capacitive reactance
Zc=sqrt(15^2+Xc^2)
Ic=200/Zc
phi_c=atand(Xc/15)//angle of lag of Ic w.r.t. applied voltage
Ic=pol2rect(Ic,phi_c)
I=Ia+Ib+Ic
phi=atand(imag(I)/real(I))
mprintf("For the new circuit, total current drawn=%f A lagging the applied voltage by %f degrees, i.e. pf=%f(lagging)", mag(I),-phi,cos(phi*%pi/180))
