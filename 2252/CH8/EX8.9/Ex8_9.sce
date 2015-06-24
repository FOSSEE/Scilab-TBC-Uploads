
function[r]=mag(A)
    x=real(A)
    y=imag(A)
    r=sqrt(x^2+y^2)
endfunction

j=%i
R1=12//resistance of series circuit
X1=2*%pi*50*.025//inductive reactance of the series circuit
Z1=R1+X1*j
pf1=R1/mag(Z1)//power factor of the series circuit(lagging)
//the impedances and power factor of the parallel circuit are to be same as that of series circuit
//on solving, we get, R*Xl/sqrt(R^2+Xl^2)=mag(Z1); Xl/(sqrt(R^2+Xl^2))=pf1
R=mag(Z1)/pf1
//solving for Xl
Xl=pf1*R/sqrt(1-pf1^2)
L=Xl/(2*%pi*50)
mprintf("Resistance=%f ohm; Inductance=%f H\n",R,L)
//calculating current in each case
V=230//applied voltage
I1=V/mag(Z1)
mprintf("Current in series circuit=%f A\n",I1)
I2=V/mag(Z1)
mprintf("Current drawn by parallel circuit=%f A",I2)
//The answers vary from the textbook due to round off error
