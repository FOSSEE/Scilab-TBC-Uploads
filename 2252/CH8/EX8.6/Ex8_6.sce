
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction
j=%i
//voltage V is taken as reference phasor
Z1=5+10*j//impedance of inductive branch
Z2=10-15*j//impedance of capacitive branch
I=20//total current
V=I/mag(1/Z1+1/Z2)
mprintf("Applied voltage=%f V\n",V)
//calculating power factor of total current
I1=V/Z1
I2=V/Z2
I=I1+I2
phi=atan(imag(I)/real(I))//angle of lag
pf=cos(phi)
mprintf("Power factor of the total circuit=%f(lagging)\n",pf)
//calculating power taken by each branch
R1=5//resistance of branch 1
P1=mag(I1)^2*R1
R2=10//resistance of branch 2
P2=mag(I2)^2*R2
mprintf("Power taken by inductive branch=%f W\nPower taken by capacitive branch=%f W", P1,P2)
//answers vary from the textbook due to round off error
