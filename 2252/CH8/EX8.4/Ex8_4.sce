
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
//for coil A
Ia=5//current taken
Va=110//voltage applied
Pa=300//power dissipated
Ra=Pa/Ia^2
Za=Va/Ia
Xa=sqrt(Za^2-Ra^2)
//for coil B
Ib=5//current taken
Vb=110//voltage applied
Pb=400//power dissipated
Rb=Pb/Ib^2
Zb=Vb/Ib
Xb=sqrt(Zb^2-Rb^2)
//calculating current drawn and power factor when coils conected in series
R=Ra+Rb
Xl=Xa+Xb
Z=sqrt(R^2+Xl^2)//impedance of series circuit
I=Va/Z
pf=R/Z
mprintf("Current in the series circuit=%f A at pf=%f lagging\n", I,pf)
//calculating current drawn and power factor when coils conected in parallel
Ia=pol2rect(Ia,-acosd(Ra/Za))
Ib=pol2rect(Ib,-acosd(Rb/Zb))
I=Ia+Ib
phi=atan(imag(I)/real(I))
mprintf("Total current drawn by the parallel circuit=%f A at pf=%f(lagging)", mag(I),cos(phi))


   
