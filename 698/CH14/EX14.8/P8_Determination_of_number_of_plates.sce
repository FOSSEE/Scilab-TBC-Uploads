clc
// Example 14.8
//Determine number of plates
//------------------------------------------------------------------------------
//Given Data:
//Torque
t=45//Nm
//Service factor
Ka=2
//Outer Radius
Ro=0.1/2//m
//Inner radius
Ri=0.065/2//m
//Mean raius
Rm=(Ro+Ri)/2//m
//coefficient of friction
f=0.08
//Maximum allowable pressure
pmax=0.7*(10^6)//Pa
//Design torque
T=Ka*t

//------------------------------------------------------------------------------
//Assuimg uniform wear conditions
//Axial force
F=2*%pi*pmax*Ri*(Ro-Ri)
//Number of contacting surfaces
n=T/(f*F*Rm)
N=ceil(n)

//n1= number of driver plates
//n2=number of friction plates
//n=n1+n2-1
//n2=n1-1 or n2=n1
//solving above two equations
n1=(N/2)
N1=ceil(n1)
n2=n1
N2=ceil(n2)

//------------------------------------------------------------------------------
//Printing result file to .txt
res8=mopen(TMPDIR+'8_determination_of_number_of_plates.txt','wt')
mfprintf (res8,"Number of contacting surfaces %d\n",N)
mfprintf(res8,"Number of driver plates are %d\n",N1)
mfprintf(res8,"Number of friction plates are %d\n\n",N2)
mfprintf(res8,"There are %d total number of plates, with %d pressure and %d friction discs",N,N1,N2)
mclose(res8)
editor(TMPDIR+'8_determination_of_number_of_plates.txt')

//------------------------------------------------------------------------------
//------------------------------End of program----------------------------------