
//calculating rotor starting current per phase on normal voltage with slip ring short-circuited
V=400//voltage applied to the stator winding
V1=V/sqrt(3)//phase voltage
k=2.5//transformation ratio
R2=.02//rotor resistance per phase
//at standstill
s=1//slip
E2=V1/k//induced phase voltage in the rotor winding
X2=2*%pi*50*.6D-3//rotor reactance per phase
Z2=sqrt(R2^2+X2^2)
I2=E2/Z2
mprintf("Rotor starting current per phase on normal voltage with slip ring short-circuited=%f A\n",I2)
//calculating rotor power factor at starting
pf=R2/Z2
mprintf("Rotor power factor at starting=%f\n",pf)
//calculating rotor current per phase at 3 % slip
s=.03//slip
E2=s*E2
X2=s*X2
Z2=sqrt(R2^2+X2^2)
I2=E2/Z2
mprintf("Rotor current per phase at 3 percent slip=%f A\n",I2)
//calculating rotor power factor at 3% slip
pf=R2/Z2
mprintf("Rotor power factor at 3 percent slip=%f",pf)
//answers vary from the textbook due to round off error
