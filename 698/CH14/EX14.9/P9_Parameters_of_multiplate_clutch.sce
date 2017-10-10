clc
//Example 14.9
//Parameters of a multiplate clutch
//------------------------------------------------------------------------------
//Given Data:
//Power capacity
P=4000 //Watts
//speed
N=750 //rev/min
//Inner radius
Ri=0.04 //m
//Outer radius
Ro=0.07 //m
//coefficient of friction
f=0.1
//average allowable pressure
pmax=350*(10^3) // N/(m^2)
//------------------------------------------------------------------------------

// Assuming uniform wear theory
//Axial force
F=pmax*%pi*((Ro^2)-(Ri^2))
//Total torque applied
T=(P*60)/(2*%pi*N)
//Torque per pair of surfaces
Tc=F*f*((Ro+Ri)/2)
//number of surfaces
n=T/Tc
n=ceil(n)
//This obtained value must be an even number since it is the total number of surfaces, which are in pairs
if (n-fix(n./2).*2==0)//For checking if n is even or not. If not, adding 1 to n to make it even
    n=n
else 
    n=n+1
end
//Actual Torque
Ta=T/n
//Actual axial force required:
Fa=(2*Ta)/(f*(Ro+Ri))
//Average actual pressure:
Pa=Fa/(%pi*((Ro^2)-(Ri^2)))
//Maximum actual pressure
Pmax=Fa/(2*%pi*(Ro-Ri)*Ri)

//------------------------------------------------------------------------------
//Printing result file to .txt
res9=mopen(TMPDIR+'9_parameters_of_multiplate_clutch.txt','wt')
mfprintf(res9,"(a) Torque capacity of one pair of surfaces, assuming uniform wear is %0.1f Nm\n",Tc)
mfprintf(res9,"(b) Total torque applied %0.1f Nm\n",T)
mfprintf(res9,"(c) Number of contacting surfaces %d\n",n)
mfprintf(res9,"(d) Actual torque per pair of surfaces is %0.1f Nm\n",Ta)
mfprintf(res9,"(e) Actual axial force required is %0.1f N\n",Fa)
mfprintf(res9,"(f) Maximum torque occurs at inner radius,and is equal to %0.1f kN/m^2",(Pmax*(10^-3)))
mclose(res9)
editor(TMPDIR+'9_parameters_of_multiplate_clutch.txt')

//------------------------------------------------------------------------------
//------------------------------------End of program----------------------------