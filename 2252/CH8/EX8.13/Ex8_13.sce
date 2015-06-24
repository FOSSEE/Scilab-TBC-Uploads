
function[r,theta]=rect2pol(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
    theta=atand(y/x)
endfunction
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction
j=%i
//calculating branch currents
Z1=15+12*j//impedance of branch 1
I1=200/Z1
phi1=atand(12/15)
Z2=25-17*j//impedance of branch 2
I2=200/Z2
phi2=atand(17/25)
mprintf("I1=%f A at angle of %f degrees\nI2=%f A at angle of %f degrees\n",mag(I1),phi1,mag(I2),phi2)
//calculating total current
I=I1+I2
[I phi]=rect2pol(I)
mprintf("Total current drawn by the circuit I=%f A, angle of lag=%f degrees and power factor=%f lagging\n",I,-phi,cos(phi*%pi/180))
//power factor is to be raised to unity-a capacitor has to be connected in parallel
//at unity power factor, imaginary part of I must be zero
Xc=-200/imag(I1+I2)
f=40
C=1/(2*%pi*f*Xc)
mprintf("If power factor is to be raised to unity-a capacitor of %f microF has to be connected in parallel to given circuit", C*1D+6)
