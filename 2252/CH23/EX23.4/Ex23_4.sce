
R2=.5//rotor resistance per phase
//at standstill
E=40//induced emf
E2=E/sqrt(3)//induced emf per phase
X2=3//rotor reactance per phase
R=4//additional resistance per phase in the rotor circuit
Rt=R2+R//total resistance per phase in the rotor circuit
Z2=sqrt(Rt^2+X2^2)//rotor impedance per phase
I2=E2/Z2
mprintf("Rotor current per phase at standstill=%f A\n", I2)
//calculating rotor current per phase at 5% slip
s=.05//slip
X2=s*X2
Z2=sqrt(R2^2+X2^2)
E2=s*E2//induced emf per phase
I2=E2/Z2
mprintf("Rotor current per phase at 5 percent slip=%f A",I2)
