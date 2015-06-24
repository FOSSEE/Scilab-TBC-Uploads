
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction
j=%i
//solving part (i)
//for coil 1
Z1=5+2*%pi*50*.03*j//impedance
Y1=1/Z1
G1=real(Y1)
B1=imag(Y1)
mprintf("For coil 1,\nConductance=%f mho\nSuspectance=%f mho\nAdmittance=%f mho\n", G1,-B1,mag(Y1))
//for coil 2
Z2=3+2*%pi*50*.04*j//impedance
Y2=1/Z2
G2=real(Y2)
B2=imag(Y2)
mprintf("For coil 2,\nConductance=%f mho\nSuspectance=%f mho\nAdmittance=%f mho\n", G2,-B2,mag(Y2))
//solving part(ii)
Y=Y1+Y2//total admittance
I=200*Y
phi=atan(imag(I)/real(I))
pf=cos(phi)
mprintf("Total current drawn by the circuit=%f A at pf of %f(lagging)\n",mag(I),pf)
//calculating power
P=200*mag(I)*pf
mprintf("Power absorbed by the circuit=%f W\n",P)
//solving part(iv)
Z=1/Y
R=real(Z)
Xl=imag(Z)
L=Xl/(2*%pi*50)
mprintf("R=%f ohm, L=%f H of single coil which will take the same current and power as taken by the original circuit",R,L)
//answers vary from the textbook due to round off error
