clc
//Example 14.11
//Outer diameter of clutch

//------------------------------------------------------------------------------
//Given Data:
// number of plates
n1=5
n2=4
// if n is total number of surfces
n=n1+n2-1

//Total torqe transmitting capacity
Tt=16// Nm
//Permissible inner diameter
Di=0.05// m
//coefficient of friction
f=0.1
//average pressure
p=350000 //N/(m^2)

//------------------------------------------------------------------------------
//Torque per pair of surfaces
T=Tt/n

//T=F*f*((Do+Di)/4)
//T=((%pi/4)*((Do^2)-(Di^2))*p)*f*((Do+Di)/4)
//To solve above equation for Do, it has to brought to a polynomial equation form in Do
//((%pi*p*f)*(Do^3))+((%pi*p*f*Di)*(Do^2))-((%pi*p*f*(Di^2))*Do)-((%pi*p*f*(Di^3))+(16*T))=0
x=poly([-((%pi*p*f*(Di^3))+(16*T)) -(%pi*p*f*(Di^2)) (%pi*p*f*Di) (%pi*p*f)],'Do','c')
y=roots(x)
//y will contain all roots of the polynomial, the first of which is the acceptable one
Do=y(1)

//Axial force F
F=T/(f*((Do+Di)/4))

Do=round(Do*(10^3))
F=round(F)
//Actual pressure
p=F/((%pi/4)*(((Do*(10^-3))^2)-(Di^2)))

//------------------------------------------------------------------------------
//Printing result file to .txt
res11=mopen(TMPDIR+'11_outer_diameter_of_clutch.txt','wt')
mfprintf(res11,"Necessary outer diameter of disks is %0.2f mm\n",Do)
mfprintf(res11,"Necessary axial force is %0.2f N\n",F)
mfprintf(res11,"Actual contact pressure is %0.2f kN/m^2",p*(10^-3))
mclose(res11)
editor(TMPDIR+'11_outer_diameter_of_clutch.txt')

//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------